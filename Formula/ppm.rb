
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.2.0/ppm.phar"
  sha256 "99f04aed983b901aa5107204f2c8a6311353f3db258966fd659a566302306e6e"
  version "4.2.0"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.2.0$/, shell_output("ppm --version")
  end
end

