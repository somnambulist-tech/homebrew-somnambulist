
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.21.0/somnambulist-project-manager.phar"
  sha256 "c57b9b07fe74c84dc8f09b6e75dae6c1f005e5b57f87f75aa8b300d251d595d3"
  version "0.21.0"
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.21.0$/, shell_output("spm --version")
  end
end

