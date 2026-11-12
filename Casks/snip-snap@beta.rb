cask "snip-snap@beta" do
  version "0.6.1-beta.178"
  sha256 "b9b1b5a8316ea7abfea051255421cc72d9d4722d8475735377c54665fdf3216d"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.178/Snip-Snap-0.6.1.zip"
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
