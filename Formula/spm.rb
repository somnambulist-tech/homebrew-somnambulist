
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.10.0/somnambulist-project-manager.phar"
  sha256 "02cafa4a4d5f5f6b2c92bfdc8b9f8396a009a115d0da926068cc93769a2064db"
  version "0.10.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.10.0$/, shell_output("spm --version")
  end
end

