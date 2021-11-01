
require 'octokit'
require 'open-uri'

class RepoDef
  attr_accessor :obj_class, :app_name, :alias, :desc, :repo, :depends

  def initialize(obj_class, app_name, c_alias, desc, repo, depends = nil)
    @obj_class = obj_class
    @app_name = app_name
    @alias = c_alias
    @desc = desc
    @repo = repo
    @depends = depends
  end

  def latest_release
    client = Octokit::Client.new
    release = client.latest_release @repo
    hash = nil

    unless release.assets[1]&.browser_download_url.nil?
      hash = open(release.assets[1].browser_download_url).read.match(/sha256sum ([a-f0-9]+)/)[1]
    end

    ReleaseFile.new(release.assets[0].name, release.assets[0].browser_download_url, release.tag_name, hash)
  end

  def map
    file = latest_release

    map = {
        '__CLASS__' => @obj_class,
        '__TITLE__' => @app_name,
        '__DESC__' => @desc,
        '__REPO__' => @repo,
        '__ALIAS__' => @alias,
        '__DEPENDS__' => if @depends.nil? then '' else @depends end,

        # from the latest release file info
        '__URL__' => file.link,
        '__SHA__' => file.hash,
        '__VERSION__' => file.version,
        '__FILE__' => file.name,
    }
  end
end

class ReleaseFile
  attr_accessor :name, :link, :version, :hash

  def initialize(name, link, version, hash)
    @name = name
    @link = link
    @version = version
    @hash = hash
  end
end

template = '
class __CLASS__ < Formula
  desc "__DESC__"
  homepage "https://github.com/__REPO__"
  url "__URL__"
  sha256 "__SHA__"
  version "__VERSION__"
  __DEPENDS__

  def install
    bin.install "__FILE__" => "__FILE__"
    bin.install_symlink  "#{bin}/__FILE__" => "__ALIAS__"
  end

  test do
    assert_match /^__TITLE__ __VERSION__$/, shell_output("__ALIAS__ --version")
  end
end

'

toProcess = [
    RepoDef.new('Syncit', 'Sync-It with Mutagen', 'syncit', 'SyncIt for Mutagen a PHP helper for managing mutagen sessions', 'somnambulist-tech/sync-it' , 'depends_on "mutagen-io/mutagen/mutagen"'),
    RepoDef.new('Spm', 'Somnambulist Project Manager', 'spm', 'Somnambulist Project Manager (SPM) for managing PHP micro-services projects', 'somnambulist-tech/project-manager' ),
    RepoDef.new('Ppm', 'PHP-PM', 'ppm', 'PHP-PM Process Manager for PHP as a Phar archive', 'somnambulist-tech/phppm-phar' ),
]

toProcess.each do |d|
  map = d.map
  re = Regexp.new(map.keys.map { |x| Regexp.escape(x) }.join('|'))
  classdef = template.gsub(re, map)

  puts 'Updating formula for ' + d.app_name + "\n"
  File.write('Formula/' + d.obj_class.downcase + '.rb', classdef)
end
