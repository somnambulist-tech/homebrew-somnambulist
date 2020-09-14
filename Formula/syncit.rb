
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.2.2/mutagen-sync-it.phar"
  sha256 "55ecc456692d9e508e89c09147101635a4133220f3295e69fa4f1dc8b1eeb818"
  version "1.2.2"
  bottle :unneeded
  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "mutagen-sync-it.phar"
    bin.install_symlink  "#{bin}/mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.2.2$/, shell_output("syncit --version")
  end
end

