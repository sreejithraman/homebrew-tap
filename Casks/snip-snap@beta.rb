cask "snip-snap@beta" do
  version "0.6.1-beta.168"
  sha256 "cbde28967980f1d4545f3ccba105a7a63e9092150161cf6395e293d95ed00e55"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.168/Snip-Snap-0.6.1.zip"
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
