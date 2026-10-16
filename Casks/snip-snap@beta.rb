cask "snip-snap@beta" do
  version "0.6.1-beta.155"
  sha256 "6f67c6ff9cb95f85c692f2ab4cf09b057b1343b50cba2d40f5fdc0a9887d4def"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.155/Snip-Snap-0.6.1.zip"
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
