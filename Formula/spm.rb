
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.8.0/somnambulist-project-manager.phar"
  sha256 "616a6ddb31391b44ab918e1e0fecb9cac16735d21af1761ab90f9128d624833a"
  version "0.8.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.8.0$/, shell_output("spm --version")
  end
end

