cask "snip-snap@beta" do
  version "0.5.0-beta.30"
  sha256 "568317b877b18f2a160369ddaa416cbab38360d141f1e4c1b7090a75724fa7a3"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.30/Snip-Snap-0.5.0.zip"
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
