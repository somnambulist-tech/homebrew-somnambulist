
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.2.0/mutagen-sync-it.phar"
  sha256 "12fbf736c66f7e7d2e83114b69647a6840a608267e46afa92a0a4ddae14689c9"
  version "1.2.0"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.2.0$/, shell_output("syncit --version")
  end
end

