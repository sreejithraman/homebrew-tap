cask "snip-snap@beta" do
  version "0.6.1-beta.301"
  sha256 "4a24c435ab2cb2f7eb8221f991333982c86bb2984cf3dc764b97a492518f97d9"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.301/Snip-Snap-0.6.1.zip"
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
