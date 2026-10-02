cask "snip-snap@beta" do
  version "0.6.1-beta.142"
  sha256 "c4acf1c0a0c134be3c833c28d709446ee25f158ac42f6c49146be41d40b34176"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.142/Snip-Snap-0.6.1.zip"
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
