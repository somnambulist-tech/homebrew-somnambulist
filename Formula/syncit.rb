
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/4.0.0/mutagen-sync-it.phar"
  sha256 "9bd0e96883e345ad46b657d0d7b6025f779d65eda0c0e528171fcb64e5fbcc30"
  version "4.0.0"
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 4.0.0$/, shell_output("syncit --version")
  end
end

