
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.9.0/somnambulist-project-manager.phar"
  sha256 "ec0743cba5a13c68ce46bf82fd33a4d9c07290258856b0e79cb3143511e5458e"
  version "0.9.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.9.0$/, shell_output("spm --version")
  end
end

