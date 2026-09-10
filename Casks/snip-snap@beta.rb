cask "snip-snap@beta" do
  version "0.5.0-beta.56"
  sha256 "8c049390825dff045ded08c6ef5feca5edff1702b16adfd34f06502a0201e2c0"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.56/Snip-Snap-0.5.0.zip"
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
