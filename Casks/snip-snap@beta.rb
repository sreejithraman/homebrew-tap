cask "snip-snap@beta" do
  version "0.5.0-beta.38"
  sha256 "9de88fa09260302180edd80d91ae196ee1a92b6e3dcb118a4f7c01dbd4eac250"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.38/Snip-Snap-0.5.0.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
