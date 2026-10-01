cask "snip-snap@beta" do
  version "0.6.0-beta.134"
  sha256 "5a9cb5017b096e57e22ecc59765df155cea719c86f26f979d488116a5207ceea"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.134/Snip-Snap-0.6.0.zip"
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
