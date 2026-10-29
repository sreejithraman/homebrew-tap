cask "snip-snap@beta" do
  version "0.6.1-beta.170"
  sha256 "f22818b97ebb69c42a0a99a937554d6767d8f179e65eef82370bd36c60f9fa84"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.170/Snip-Snap-0.6.1.zip"
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
