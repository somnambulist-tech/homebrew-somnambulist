
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.11.0/somnambulist-project-manager.phar"
  sha256 "6d4d97854650e3cfed6e423ad3c4eed7b2f85377fbd8d81ec4c0b2a33b794f3e"
  version "0.11.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.11.0$/, shell_output("spm --version")
  end
end

