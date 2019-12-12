class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/dave-redfern/somnambulist-phppm-phar"
  url "https://github.com/dave-redfern/somnambulist-phppm-phar/releases/download/3.0.0/ppm.phar"
  sha256 "2ef12a85fe1c5ac85f806e843d95ab257c4e3c6d204915c878e07e90c19d179c"

  bottle :unneeded

  def install
    bin.install "ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 2.0.1$/, shell_output("ppm --version")
  end
end