
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.1.0/ppm.phar"
  sha256 "3eaf710ec212ac679f61f41ac0b9c23f379bd93a7f2215493520097928c07c6f"
  version "4.1.0"

  bottle :unneeded

  

  def install
    bin.install "ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.1.0$/, shell_output("ppm --version")
  end
end

