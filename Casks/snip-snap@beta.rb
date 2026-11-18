cask "snip-snap@beta" do
  version "0.6.1-beta.284"
  sha256 "3fc067c46c82bc5835a6d9db98c4f41c8c2706047b8dc7f38f736312c12e64fd"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.284/Snip-Snap-0.6.1.zip"
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
