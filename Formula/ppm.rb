
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/7.1.0/ppm.phar"
  sha256 "b6b9d68a7d83e46285b2f0f4f5036dc1efbe844fc1e8e01512e4a10b4d49f3af"
  version "7.1.0"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 7.1.0$/, shell_output("ppm --version")
  end
end

