cask "snip-snap@beta" do
  version "0.6.0-beta.113"
  sha256 "d040c15948e636442fdba76f805789bdc867a91c63a3d188f3682c8bbd546a23"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.113/Snip-Snap-0.6.0.zip"
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
