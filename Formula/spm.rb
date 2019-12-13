class Spm < Formula
  desc "Somnambulist Project Manager (SPM) for managing PHP micro-services projects"
  homepage "https://github.com/dave-redfern/somnambulist-project-manager"
  url "https://github.com/dave-redfern/somnambulist-project-manager/releases/download/0.1.1/somnambulist-project-manager.phar"
  sha256 "384d2add738b1cdf73a9fc81aa3e20b620cd08707a3cb88fe6eb7acbdbc17d28"

  bottle :unneeded

  def install
    bin.install "somnambulist-project-manager.phar" => "spm"
  end

  test do
    assert_match /^Somnambulist Project Manager 1.0.0/, shell_output("spm --version")
  end
end
