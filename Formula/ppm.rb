
class Ppm < Formula
  desc "PHP-PM Process Manager for PHP as a Phar archive"
  homepage "https://github.com/dave-redfern/somnambulist-phppm-phar"
  url "https://github.com/dave-redfern/somnambulist-phppm-phar/releases/download/3.0.1/ppm.phar"
  sha256 "93e35140992a15fe0395e4b4983ba6f03b25cdfd3f56454d0660d21d3e314c3c"
  version "3.0.1"

  bottle :unneeded

  

  def install
    bin.install "ppm.phar" => "ppm"
  end

  test do
    assert_match /^PHP-PM 3.0.1$/, shell_output("ppm --version")
  end
end

