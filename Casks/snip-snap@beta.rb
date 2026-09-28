cask "snip-snap@beta" do
  version "0.6.0-beta.114"
  sha256 "f7ab5bbb1c7b2c345f494fa59dc94b9b07791c291850b4d19816e4597cd405ca"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.114/Snip-Snap-0.6.0.zip"
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
