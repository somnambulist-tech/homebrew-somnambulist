class Ppm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.1.0/somnambulist-project-manager.phar"
  sha256 "fac876f450904bed7d401964bb2e88b03075004e2edf47bf96f0a79f9c799521"

  bottle :unneeded

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 1.0.0/, shell_output("spm --version")
  end
end
