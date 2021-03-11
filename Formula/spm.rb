
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.0/somnambulist-project-manager.phar"
  sha256 "96fa7f72bdc0bf4d1b264e0e848240c141c7a2b0b15abf6371f01dcddf30bcc8"
  version "0.19.0"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.0$/, shell_output("spm --version")
  end
end

