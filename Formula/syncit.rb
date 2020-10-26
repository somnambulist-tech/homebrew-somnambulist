
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.3.0/mutagen-sync-it.phar"
  sha256 "477df786b53d0e09873962ba2b1af89050aa54debd52385441fe331a40db5f02"
  version "1.3.0"
  bottle :unneeded
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.3.0$/, shell_output("syncit --version")
  end
end

