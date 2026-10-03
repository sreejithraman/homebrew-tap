cask "snip-snap@beta" do
  version "0.6.1-beta.147"
  sha256 "4d699cf7bdb11fc42253efa7ce6acd9c44d27922d7c25713579427991b2efef3"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.147/Snip-Snap-0.6.1.zip"
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
