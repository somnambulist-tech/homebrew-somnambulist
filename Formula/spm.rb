
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.16.0/somnambulist-project-manager.phar"
  sha256 "573c7d5737c228814f7f49e6bafa65938d72f5a26d266682ed2c0b9a215df4c2"
  version "0.16.0"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.16.0$/, shell_output("spm --version")
  end
end

