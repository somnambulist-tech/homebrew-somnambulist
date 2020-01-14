
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.6.1/somnambulist-project-manager.phar"
  sha256 "d385e7fa5e231eff96073315fcd4d35925c5f133f28f835ee50c0f91bc94920e"
  version "0.6.1"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.6.1$/, shell_output("spm --version")
  end
end

