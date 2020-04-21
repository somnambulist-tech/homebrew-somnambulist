
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.13.0/somnambulist-project-manager.phar"
  sha256 "7b868cd48928f41e6eda98bb4deb1ec127a1756302cd656a8536896a6d833b3f"
  version "0.13.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.13.0$/, shell_output("spm --version")
  end
end

