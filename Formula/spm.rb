
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.10.2/somnambulist-project-manager.phar"
  sha256 "8930720bfae0e155dceda48b06e41e60bd47e20de456a2b3d8eb18c45dd72f3c"
  version "0.10.2"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.10.2$/, shell_output("spm --version")
  end
end

