cask "snip-snap@beta" do
  version "0.5.0-beta.62"
  sha256 "f224ca513379b103f5fb8624d2812a637ac0f6704aabe7ed482c6c8d0a01fe91"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.62/Snip-Snap-0.5.0.zip"
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
