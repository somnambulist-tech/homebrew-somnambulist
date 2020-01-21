
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.6.2/somnambulist-project-manager.phar"
  sha256 "7097d228dba5cd381231ba569e11805b6c0abb989eebbe96b3dea7c2af0d062b"
  version "0.6.2"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.6.2$/, shell_output("spm --version")
  end
end

