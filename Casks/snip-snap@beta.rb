cask "snip-snap@beta" do
  version "0.6.1-beta.302"
  sha256 "a3c3f3d1c98789be7a84e9ed31c8a54bac7616ecc660117756c6669bbea346c0"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.302/Snip-Snap-0.6.1.zip"
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
