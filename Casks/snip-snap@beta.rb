cask "snip-snap@beta" do
  version "0.6.1-beta.162"
  sha256 "e91159a708b043ff979171c2e5f379e44f6da2fb17856703ddb5f0024ff19b8b"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.162/Snip-Snap-0.6.1.zip"
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
