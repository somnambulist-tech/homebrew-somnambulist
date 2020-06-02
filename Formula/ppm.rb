
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.2.1/ppm.phar"
  sha256 "d1714092b368136f290d03ca61bf00550b91a40935852de83953e5ba51ca30f3"
  version "4.2.1"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.2.1$/, shell_output("ppm --version")
  end
end

