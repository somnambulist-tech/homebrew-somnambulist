
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/5.0.1/ppm.phar"
  sha256 "4c02fa5070ec0c3c9afa75c4bf3992ec16124ca7325eaa6579a01e686e984748"
  version "5.0.1"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 5.0.1$/, shell_output("ppm --version")
  end
end

