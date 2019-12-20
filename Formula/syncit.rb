
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/dave-redfern/somnambulist-sync-it"
  url "https://github.com/dave-redfern/somnambulist-sync-it/releases/download/1.0.2/mutagen-sync-it.phar"
  sha256 "d808590413e35378e4f3c66ef96b1c520da7461b099691e5fea13ff4be06364e"
  version "1.0.2"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.0.2$/, shell_output("syncit --version")
  end
end

