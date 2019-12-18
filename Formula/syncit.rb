class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/dave-redfern/somnambulist-sync-it"
  url "https://github.com/dave-redfern/somnambulist-sync-it/releases/download/1.0.1/mutagen-sync-it.phar"
  sha256 "803a0adf52e054f154a7b4d266d0ecd06c64c9ee067a4e24f40fcb61e9110fbb"
  version "1.0.1"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.0.1$/, shell_output("syncit --version")
  end
end