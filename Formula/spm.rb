
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.3/somnambulist-project-manager.phar"
  sha256 "8eb68025a6179b88ee9ef7bd6c6e9605eef80861d419b139d82105a6118622ad"
  version "0.19.3"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.3$/, shell_output("spm --version")
  end
end

