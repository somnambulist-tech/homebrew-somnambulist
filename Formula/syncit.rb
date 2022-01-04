
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/3.0.0/mutagen-sync-it.phar"
  sha256 "895d90b2c8a3164c44fccb39de105c5bbfcf0e7a949ad87d5b4a318c473ce4fd"
  version "3.0.0"
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 3.0.0$/, shell_output("syncit --version")
  end
end

