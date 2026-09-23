cask "snip-snap@beta" do
  version "0.5.1-beta.97"
  sha256 "738def14995626d276d031f9e99347190c52c81a130792a9dcea1d8a6a2ed3ac"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.97/Snip-Snap-0.5.1.zip"
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
