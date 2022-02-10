
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/7.0.0/ppm.phar"
  sha256 "cc6c9b68d31686732d6ea61618bb15b4bec6ad3252d344378d402d0dcb5f4eb5"
  version "7.0.0"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 7.0.0$/, shell_output("ppm --version")
  end
end

