
class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/somnambulist-tech/project-manager"
  url "https://github.com/somnambulist-tech/project-manager/releases/download/0.14.0/somnambulist-project-manager.phar"
  sha256 "5c83b80790199f094d182fde1a7144ddbea56227dc8710d4fd810f3ef6c79a79"
  version "0.14.0"
  bottle :unneeded
  

  def install
    bin.install "somnambulist-project-manager.phar" => "somnambulist-project-manager.phar"
    bin.install_symlink  "#{bin}/somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 0.14.0$/, shell_output("spm --version")
  end
end

