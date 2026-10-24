cask "snip-snap@beta" do
  version "0.6.1-beta.161"
  sha256 "63e9764d32feacf11e3f260a28abdbfe827e2e70ae59d7638a878184ac514f04"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.161/Snip-Snap-0.6.1.zip"
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
