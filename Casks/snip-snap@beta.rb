cask "snip-snap@beta" do
  version "0.5.1-beta.98"
  sha256 "0127481862c719131e3a139cc428fe9680b17bc26c1971ac7ac45b46fbf9cafd"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.98/Snip-Snap-0.5.1.zip"
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
