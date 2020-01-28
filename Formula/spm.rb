
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.8.3/somnambulist-project-manager.phar"
  sha256 "8efcc45796d5d7eaee25baa4d4e969f86a8f0980287001e4b2f1cf520e099ff5"
  version "0.8.3"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.8.3$/, shell_output("spm --version")
  end
end

