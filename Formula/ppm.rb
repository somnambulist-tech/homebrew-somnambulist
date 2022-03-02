
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/somnambulist-tech/phppm-phar"
  url "https://github.com/somnambulist-tech/phppm-phar/releases/download/7.0.2/ppm.phar"
  sha256 "b93355d36ddd1e5d5e980d5a5b696d404849335d3c9a4347a389bbf6642e5531"
  version "7.0.2"
  

  def install
    bin.install "ppm.phar" => "ppm.phar"
    bin.install_symlink  "#{bin}/ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 7.0.2$/, shell_output("ppm --version")
  end
end

