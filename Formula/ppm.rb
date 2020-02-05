
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.0.0/ppm.phar"
  sha256 "ebdc1ce60516f9082f4c1882948171db787abf70a31aedb61d681fb789f8282e"
  version "4.0.0"

  bottle :unneeded

  

  def install
    bin.install "ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.0.0$/, shell_output("ppm --version")
  end
end

