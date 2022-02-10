
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/7.0.1/ppm.phar"
  sha256 "fa4e765da3f9325e86f3846da0355d0db546910ce4804773fb097ae2b7721aba"
  version "7.0.1"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 7.0.1$/, shell_output("ppm --version")
  end
end

