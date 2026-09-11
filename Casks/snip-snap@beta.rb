cask "snip-snap@beta" do
  version "0.5.0-beta.64"
  sha256 "804da8952e7ab4c853e05a67082c351bed8241abca44308087d9c853621dcbc9"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.64/Snip-Snap-0.5.0.zip"
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
