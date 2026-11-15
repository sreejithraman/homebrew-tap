cask "snip-snap@beta" do
  version "0.6.1-beta.266"
  sha256 "992da8ce5495d5f84b48456b09b2d52c64683af60be6c9079f5141806a4e362d"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.266/Snip-Snap-0.6.1.zip"
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
