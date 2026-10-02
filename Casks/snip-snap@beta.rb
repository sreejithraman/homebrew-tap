cask "snip-snap@beta" do
  version "0.6.1-beta.143"
  sha256 "597b783847a62e24100265efa8b3631db20375e0c193f7f8752a77112f90fffc"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.143/Snip-Snap-0.6.1.zip"
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
