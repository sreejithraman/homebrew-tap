cask "snip-snap@beta" do
  version "0.6.1-beta.186"
  sha256 "30de86cea41c8c0018946c81d3980350c67b8f1d4af8b6d068b89728399dfe00"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.186/Snip-Snap-0.6.1.zip"
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
