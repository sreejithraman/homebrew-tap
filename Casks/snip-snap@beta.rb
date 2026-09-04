cask "snip-snap@beta" do
  version "0.5.0-beta.33"
  sha256 "e6d2d5df17ab1c0df6492da58ed4a43a7db03dca2f4e986e3ba356fd440a601c"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.33/Snip-Snap-0.5.0.zip"
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
