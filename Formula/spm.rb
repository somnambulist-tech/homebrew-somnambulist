
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.12.0/somnambulist-project-manager.phar"
  sha256 "8d4bae78fa86c6bf1d3231e3d1498d4b93a59d76755323e1023c138b6c74c2cd"
  version "0.12.0"

  bottle :unneeded

  

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.12.0$/, shell_output("spm --version")
  end
end

