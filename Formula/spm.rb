
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.20.1/somnambulist-project-manager.phar"
  sha256 "c462e0e7b5cd275671757e64b68793d857c9995e36ec82129c061607b8f3df25"
  version "0.20.1"
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.20.1$/, shell_output("spm --version")
  end
end

