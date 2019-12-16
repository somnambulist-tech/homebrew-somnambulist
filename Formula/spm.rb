class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.3.0/somnambulist-project-manager.phar"
  sha256 "61dece0fcc98c107cbd8c43e5a2a90e2f256f1c9f7c3f36f710b009b483e1732"

  bottle :unneeded

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 1.0.0/, shell_output("spm --version")
  end
end
