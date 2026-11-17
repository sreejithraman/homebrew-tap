cask "snip-snap@beta" do
  version "0.6.1-beta.277"
  sha256 "83b3bf3b73bdf6ed5a53983c6821ebec00bbb218e745021821eebe0a3cb19c96"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.277/Snip-Snap-0.6.1.zip"
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
