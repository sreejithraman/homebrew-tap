cask "snip-snap@beta" do
  version "0.6.0-beta.131"
  sha256 "15b6bb0dbdd6ca419dad7e93d3dbfd6556c89a7cab31ee26bb7a722fb557dc98"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.131/Snip-Snap-0.6.0.zip"
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
