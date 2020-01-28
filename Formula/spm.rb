
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.8.1/somnambulist-project-manager.phar"
  sha256 "d69977579f4a2d5eb2c4387ea1cc4dd33104d6f2de20c17f407cf7042efa6c16"
  version "0.8.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.8.1$/, shell_output("spm --version")
  end
end

