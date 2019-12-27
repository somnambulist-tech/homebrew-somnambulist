
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.5.4/somnambulist-project-manager.phar"
  sha256 "122caaf224d1ea0de5e54a9a8bbe64433b31319c74a9b2d90cad94445b981f41"
  version "0.5.4"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.5.4$/, shell_output("spm --version")
  end
end

