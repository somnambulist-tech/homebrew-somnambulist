
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.15.2/somnambulist-project-manager.phar"
  sha256 "26dd78d3b6d28a0cfb12a167dd33e3dd40f456a34073ef825cda102598812bc9"
  version "0.15.2"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.15.2$/, shell_output("spm --version")
  end
end

