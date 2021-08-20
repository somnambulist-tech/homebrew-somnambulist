
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.4/somnambulist-project-manager.phar"
  sha256 "1df439910d72bbb45fe8486f561c7b3a29d6cd5b71bcc086f160e9ecf23b7627"
  version "0.19.4"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.4$/, shell_output("spm --version")
  end
end

