
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.15.3/somnambulist-project-manager.phar"
  sha256 "944dfe4093238ee69d41ca512773b08647d305673be9bdd79a5afa8e104c08a5"
  version "0.15.3"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.15.3$/, shell_output("spm --version")
  end
end

