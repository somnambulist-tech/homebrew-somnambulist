
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.4.1/somnambulist-project-manager.phar"
  sha256 "7e63b5152e1d50ac1ad91064f99c6c14d18bc6bfb9f30e604b5c7a900ccd200f"
  version "0.4.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.4.1$/, shell_output("spm --version")
  end
end

