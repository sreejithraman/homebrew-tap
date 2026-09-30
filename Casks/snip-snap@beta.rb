cask "snip-snap@beta" do
  version "0.6.0-beta.119"
  sha256 "8567e79e27501b056eeafd6a14fe2d580d9e34aa63d23a389f0ed9a152fb4242"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.119/Snip-Snap-0.6.0.zip"
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
