cask "snip-snap@beta" do
  version "0.6.1-beta.160"
  sha256 "e3b838dbb64ebe349bd3f05d86570ab92533fe51a15c9ed4667dfa2f8d5eea10"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.160/Snip-Snap-0.6.1.zip"
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
