cask "snip-snap@beta" do
  version "0.6.1-beta.273"
  sha256 "93e60e77c701e99b60d46c04d3b1ff71b4b6118b7da9e1d229838029fc1f7f57"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.273/Snip-Snap-0.6.1.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"
  binary "#{appdir}/Snip Snap.app/Contents/MacOS/snipsnap"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
