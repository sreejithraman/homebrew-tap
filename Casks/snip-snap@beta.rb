cask "snip-snap@beta" do
  version "0.6.1-beta.295"
  sha256 "44932b58f102f4cfc75aabfa3cf7ef57b44d227572dc905f04a2c04d6c366879"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.295/Snip-Snap-0.6.1.zip"
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
