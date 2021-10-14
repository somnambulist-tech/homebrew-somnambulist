
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.5/somnambulist-project-manager.phar"
  sha256 "1d4bf880e412a93fb94311c816eabd15fa2d8115787cca17c047f6b93da16ebd"
  version "0.19.5"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.5$/, shell_output("spm --version")
  end
end

