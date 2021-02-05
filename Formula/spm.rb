
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.18.0/somnambulist-project-manager.phar"
  sha256 "0ff5d7fd4194a362f23feab48f777ac7071bb8a8c282b7796c97f233ba442109"
  version "0.18.0"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.18.0$/, shell_output("spm --version")
  end
end

