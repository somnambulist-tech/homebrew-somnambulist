
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.1.0/mutagen-sync-it.phar"
  sha256 "109af44c3a96e03a3106ef456874b5999357728001b34f8d73b8e505bcffe16d"
  version "1.1.0"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.1.0$/, shell_output("syncit --version")
  end
end

