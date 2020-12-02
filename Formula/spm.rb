
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.17.3/somnambulist-project-manager.phar"
  sha256 "b75afd3268c7dd375b056486ea386b171e5adc13b713ffd0b1b3402f21dc0dc3"
  version "0.17.3"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.17.3$/, shell_output("spm --version")
  end
end

