
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.17.0/somnambulist-project-manager.phar"
  sha256 "9cb05b499245f7e9e8f61a632e053c5f36985792d1e72d0b021352edf760dfc1"
  version "0.17.0"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.17.0$/, shell_output("spm --version")
  end
end

