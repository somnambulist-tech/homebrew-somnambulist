
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/7.2.0/ppm.phar"
  sha256 "38a285e6d65d6d80ff4919a45f1012f2d46bb45fb2b341eb1ddb040515f03570"
  version "7.2.0"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 7.2.0$/, shell_output("ppm --version")
  end
end

