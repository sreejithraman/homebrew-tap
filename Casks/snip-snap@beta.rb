cask "snip-snap@beta" do
  version "0.6.1-beta.274"
  sha256 "c68cd99567576e70eb63c63c0af3b8f4c1d3722c81269f270a8e57de59d3759b"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.274/Snip-Snap-0.6.1.zip"
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
