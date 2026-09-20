cask "snip-snap@beta" do
  version "0.5.1-beta.79"
  sha256 "2c5902203428782b02f68201fc2d27111a57171be01baa719ccb8188e6803b72"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.79/Snip-Snap-0.5.1.zip"
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
