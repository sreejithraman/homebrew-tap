cask "snip-snap@beta" do
  version "0.5.0-beta.31"
  sha256 "c6fd30cc9b0184e44a905df005ea8623f19349e566ea8b0f01d8de29abf0ce19"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.31/Snip-Snap-0.5.0.zip"
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
