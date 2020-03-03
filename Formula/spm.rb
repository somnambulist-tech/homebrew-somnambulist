
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.11.1/somnambulist-project-manager.phar"
  sha256 "963f90e1e1bde2952d960e5f6f15dc5022e6656953d1312cdc05c545ba823d63"
  version "0.11.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.11.1$/, shell_output("spm --version")
  end
end

