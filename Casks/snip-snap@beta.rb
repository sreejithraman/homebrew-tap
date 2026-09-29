cask "snip-snap@beta" do
  version "0.6.0-beta.118"
  sha256 "868018b9b0dfb190e05b11a8e14b5710f1d4bc7cf3c531c8108308471e14b457"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.118/Snip-Snap-0.6.0.zip"
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
