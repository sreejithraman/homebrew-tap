cask "snip-snap@beta" do
  version "0.6.1-beta.297"
  sha256 "8efce1f4f3a7cccc7d648dafee799c8b2269f762f4331952525994a364ee6836"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.297/Snip-Snap-0.6.1.zip"
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
