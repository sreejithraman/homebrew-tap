cask "snip-snap@beta" do
  version "0.6.1-beta.165"
  sha256 "922e23361ba0de1428e4525bd57652912d918e9ecb7e4641db2bcbc100c886ce"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.165/Snip-Snap-0.6.1.zip"
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
