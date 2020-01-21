
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.7.0/somnambulist-project-manager.phar"
  sha256 "052755cc2bea6ec52089dd90c49aa81e7f1a16a96e21f0f6a2b923b7abe601d2"
  version "0.7.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.7.0$/, shell_output("spm --version")
  end
end

