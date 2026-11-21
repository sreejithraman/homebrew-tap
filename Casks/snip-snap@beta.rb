cask "snip-snap@beta" do
  version "0.6.1-beta.294"
  sha256 "93e0c2c06a636e945448b8e0007c7894ca0b5cf5eda5387cf92205fe9bca1dea"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.294/Snip-Snap-0.6.1.zip"
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
