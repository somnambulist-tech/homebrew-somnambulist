
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.19.1/somnambulist-project-manager.phar"
  sha256 "785d17d275f4238fae5272a9619f73ed5e4d986f5cd0adc9a623c2bd31eeb6c3"
  version "0.19.1"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.19.1$/, shell_output("spm --version")
  end
end

