
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.6.0/somnambulist-project-manager.phar"
  sha256 "54bf725ed8dc3b6bf4ee0658355405f411ed8f7a1d306da97cadd4ea28ca0dac"
  version "0.6.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.6.0$/, shell_output("spm --version")
  end
end

