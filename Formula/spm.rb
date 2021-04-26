
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.2/somnambulist-project-manager.phar"
  sha256 "3751f7405b8b74316c8ba7b0e70f29aaa24d7b5fc814e342013130ee4d260dc7"
  version "0.19.2"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.2$/, shell_output("spm --version")
  end
end

