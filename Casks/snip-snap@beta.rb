cask "snip-snap@beta" do
  version "0.5.0-beta.58"
  sha256 "c8de9629d328e1bf21b4b2ee697f37fbadeb57e5d8fb3a6b5838d88904113319"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.58/Snip-Snap-0.5.0.zip"
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
