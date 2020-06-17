
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.3.0/ppm.phar"
  sha256 "a9047c81b052d53c89e11474b0e21194cd25cd2fec857a587b18061bb95e1df7"
  version "4.3.0"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.3.0$/, shell_output("ppm --version")
  end
end

