cask "snip-snap@beta" do
  version "0.6.1-beta.146"
  sha256 "0efdebd4e3eb5018f1f9d2468ba872eb26d90c53f5601a37f82fe5d342a6a8a8"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.146/Snip-Snap-0.6.1.zip"
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
