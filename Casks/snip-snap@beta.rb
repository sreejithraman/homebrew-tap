cask "snip-snap@beta" do
  version "0.5.0-beta.52"
  sha256 "c91df78172728930f4c8fea272940e4e60534d2d2b4d6864985e7c7f1454c707"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.52/Snip-Snap-0.5.0.zip"
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
