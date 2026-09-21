cask "snip-snap@beta" do
  version "0.5.1-beta.85"
  sha256 "2640d41d106c2bd78b929d4b45dd22549a233b23e67d1e9c0c99f816823a13e6"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.85/Snip-Snap-0.5.1.zip"
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
