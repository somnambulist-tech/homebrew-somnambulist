
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.4.0/somnambulist-project-manager.phar"
  sha256 "6562ee87c3efd5f565aa1f69344dcde490c02148eeae384ac837b61295260732"
  version "0.4.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.4.0$/, shell_output("spm --version")
  end
end

