cask "snip-snap@beta" do
  version "0.5.0-beta.47"
  sha256 "da370827575e340508c55ceacdb45de9a9548a4ff89f030507f80ec4eece4ffd"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.47/Snip-Snap-0.5.0.zip"
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
