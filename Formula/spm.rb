
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.17.2/somnambulist-project-manager.phar"
  sha256 "3e10b1412bced4600b78aaa8d12084da810b4fb2793c53d5f120ca3b811c6c3f"
  version "0.17.2"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.17.2$/, shell_output("spm --version")
  end
end

