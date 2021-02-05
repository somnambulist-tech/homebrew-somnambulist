
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/2.0.0/mutagen-sync-it.phar"
  sha256 "cd11b31beb3e5494ff45b241b30bb68216f7f22f01250cdbd5f6fa1272cd8d7f"
  version "2.0.0"
  bottle :unneeded
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 2.0.0$/, shell_output("syncit --version")
  end
end

