class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/dave-redfern/somnambulist-sync-it"
  url "https://github.com/dave-redfern/somnambulist-sync-it/releases/download/1.0.0/mutagen-sync-it.phar"
  sha256 "47b2a36ed1c2c5e13801cceec4d80cb4c9861a463cc022913d31f87aa660ca36"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.0.0$/, shell_output("syncit --version")
  end
end