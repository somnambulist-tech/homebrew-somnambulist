
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.13.2/somnambulist-project-manager.phar"
  sha256 "da7d21732ab344a9bf08944b3dc5a4dafb9719a45f8bf5c97d4d3a9cfee91c28"
  version "0.13.2"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.13.2$/, shell_output("spm --version")
  end
end

