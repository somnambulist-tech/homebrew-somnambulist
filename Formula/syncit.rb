
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/4.0.1/mutagen-sync-it.phar"
  sha256 "2ba62e25d799029a2325a1b7f01a2c573c019e05cfea199b2c099e8aac95fee8"
  version "4.0.1"
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 4.0.1$/, shell_output("syncit --version")
  end
end

