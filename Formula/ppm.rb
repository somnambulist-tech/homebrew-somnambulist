
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/dave-redfern/somnambulist-phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/3.0.2/ppm.phar"
  sha256 "29df322c0b29fbdf09fcaf0fc59e36cae5c0ab302ab138d00ccc3b2f893bd4f1"
  version "3.0.2"

  bottle :unneeded

  

  def install
    bin.install "ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 3.0.2$/, shell_output("ppm --version")
  end
end

