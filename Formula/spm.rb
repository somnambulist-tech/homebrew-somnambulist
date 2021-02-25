
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.18.1/somnambulist-project-manager.phar"
  sha256 "e5237c4c221da7200b3bb5ef1c387c9c5425df1cbe5e26b2669a17f01a3bdf4c"
  version "0.18.1"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.18.1$/, shell_output("spm --version")
  end
end

