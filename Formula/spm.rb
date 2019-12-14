class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.2.0/somnambulist-project-manager.phar"
  sha256 "983e168bb8b14519a5e8b0ab5a1dc2e6671d570130d767d7f934a404ae7bc08e"

  bottle :unneeded

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 1.0.0/, shell_output("spm --version")
  end
end
