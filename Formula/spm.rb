
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.13.1/somnambulist-project-manager.phar"
  sha256 "6e9f792215887e5811ecaed6d65853928136e246cfe29cb085f2fdcc2d385974"
  version "0.13.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.13.1$/, shell_output("spm --version")
  end
end

