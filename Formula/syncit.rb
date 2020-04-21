
class Syncit < Formula
  desc "SyncIt for Mutagen a PHP helper for managing mutagen sessions"
  homepage "https://github.com/somnambulist-tech/sync-it"
  url "https://github.com/somnambulist-tech/sync-it/releases/download/1.2.1/mutagen-sync-it.phar"
  sha256 "350e165d86400d0e2f4e304c9e83784a49b386231f96d35cc032b872d5a728a1"
  version "1.2.1"

  bottle :unneeded

  depends_on "mutagen-io/mutagen/mutagen"

  def install
    bin.install "mutagen-sync-it.phar" => "syncit"
  end

  test do
    assert_match /^Sync-It with Mutagen 1.2.1$/, shell_output("syncit --version")
  end
end

