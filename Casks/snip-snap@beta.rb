cask "snip-snap@beta" do
  version "0.5.0-beta.63"
  sha256 "84f3416e4ef1597453103f2445e2edd77575bcf8cc18cfaa8b262ff268070033"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.63/Snip-Snap-0.5.0.zip"
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
