cask "snip-snap@beta" do
  version "0.6.0-beta.112"
  sha256 "8bcdebd155dce53d0cbd6c80261e1edc37dd22ee99b9832621ecea8dbb54933a"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.112/Snip-Snap-0.6.0.zip"
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
