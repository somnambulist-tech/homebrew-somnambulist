
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.5.3/somnambulist-project-manager.phar"
  sha256 "19918875032dcffd092329a74209baf68043effeb1d7c0c8c799148cd7aa9071"
  version "0.5.3"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.5.3$/, shell_output("spm --version")
  end
end

