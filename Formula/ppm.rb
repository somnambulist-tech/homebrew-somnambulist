
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/6.0.0/ppm.phar"
  sha256 "0b2dcd02585288a845dc6ae3dbbcf12770dd343c477daa328afc48321ed84a55"
  version "6.0.0"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 6.0.0$/, shell_output("ppm --version")
  end
end

