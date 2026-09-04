cask "snip-snap@beta" do
  version "0.5.0-beta.37"
  sha256 "b88bd27e7a52dd6ea12fed402c8182bdb6bfba24500c2e0ffcc68ffac3565323"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.37/Snip-Snap-0.5.0.zip"
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
