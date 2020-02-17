
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.10.1/somnambulist-project-manager.phar"
  sha256 "f6bb2c9b019cece1ad8136b631f0e079d85022c820c744a3cf5af401708d5cf1"
  version "0.10.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.10.1$/, shell_output("spm --version")
  end
end

