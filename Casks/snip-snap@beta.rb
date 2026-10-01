cask "snip-snap@beta" do
  version "0.6.0-beta.125"
  sha256 "7c69a64404a3cda65952c5e4b7a1c619ee8d56d80e44ed00d0e4f084d7f3fcfd"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.125/Snip-Snap-0.6.0.zip"
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
