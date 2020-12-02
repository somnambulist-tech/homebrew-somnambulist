
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.3.1/mutagen-sync-it.phar"
  sha256 "9e8404a03a02bb097ff5f5ce1a251c101fd30ad8585a4ef08c0a847ebb3bfe0f"
  version "1.3.1"
  bottle :unneeded
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.3.1$/, shell_output("syncit --version")
  end
end

