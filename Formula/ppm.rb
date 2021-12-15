
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/6.2.0/ppm.phar"
  sha256 "6153f992d5c8072f0ca74003912e363480aae19629084c2c773d95363404d3a7"
  version "6.2.0"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 6.2.0$/, shell_output("ppm --version")
  end
end

