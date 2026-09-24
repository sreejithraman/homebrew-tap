cask "snip-snap@beta" do
  version "0.5.1-beta.99"
  sha256 "91e1587899c8cdc0f6deb52a00f516e864bea8a417e64ab78c3d87ea54862707"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.99/Snip-Snap-0.5.1.zip"
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
