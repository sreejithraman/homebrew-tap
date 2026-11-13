cask "snip-snap@beta" do
  version "0.6.1-beta.184"
  sha256 "e4887b30874514c295f13ca87417a146d014c00da8b5a1c1e29b55354fe217ce"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.184/Snip-Snap-0.6.1.zip"
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
