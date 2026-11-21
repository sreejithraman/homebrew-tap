cask "snip-snap@beta" do
  version "0.6.1-beta.292"
  sha256 "4b8b3bac8caf257131014aac0b53790002b8eff4bf2d6301367c7db31c60be77"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.292/Snip-Snap-0.6.1.zip"
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
