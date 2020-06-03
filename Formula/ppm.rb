
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/4.2.2/ppm.phar"
  sha256 "ac0f3320ffeed414ab9bafc5b87cfda16c82e3714095f017dfaf458f7f8705fe"
  version "4.2.2"
  bottle :unneeded
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 4.2.2$/, shell_output("ppm --version")
  end
end

