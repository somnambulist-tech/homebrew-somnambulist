class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/dave-redfern/somnambulist-sync-it"
  url "https://github.com/dave-redfern/somnambulist-sync-it/releases/download/1.0.0-beta3/mutagen-sync-it.phar"
  sha256 "52273bb0271f0da1e3417eaeded162d54be5c823261c74a4f6b516198c816fb2"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.0.0$/, shell_output("syncit --version")
  end
end