
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/6.1.0/ppm.phar"
  sha256 "b1973870ed6eae260ed704f09728dd2c395235d8020b9f04d76931b82ae6f5c4"
  version "6.1.0"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 6.1.0$/, shell_output("ppm --version")
  end
end

