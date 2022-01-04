
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.20.0/somnambulist-project-manager.phar"
  sha256 "404d9826b1b8f98ca3b8305a9d485bcd3ebc6d17e45e43e848b7e17e263350a0"
  version "0.20.0"
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.20.0$/, shell_output("spm --version")
  end
end

