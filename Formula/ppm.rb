
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/5.0.0/ppm.phar"
  sha256 "727b2bb197fc01352e49e294f0d8eaab741293497d01eeb27cc7ee833aaa9035"
  version "5.0.0"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 5.0.0$/, shell_output("ppm --version")
  end
end

