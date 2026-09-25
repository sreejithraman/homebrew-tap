cask "snip-snap@beta" do
  version "0.5.1-beta.103"
  sha256 "678249aeda786978eb0e97ee705477955e74f05b77c3c6d6cd903c751ad4cb7b"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.103/Snip-Snap-0.5.1.zip"
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
