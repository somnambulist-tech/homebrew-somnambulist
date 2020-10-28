
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.17.1/somnambulist-project-manager.phar"
  sha256 "40711cd16bc1e7a4a39fd027ec2735c4864fdfd7e0325adbcd7b46c76d5fd6c5"
  version "0.17.1"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.17.1$/, shell_output("spm --version")
  end
end

