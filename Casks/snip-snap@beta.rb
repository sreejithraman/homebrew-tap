cask "snip-snap@beta" do
  version "0.6.0-beta.126"
  sha256 "a5af0e01906c385f4bf21ddf5c44b582d7db12effef5927f2e158a0137ecc9dc"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.126/Snip-Snap-0.6.0.zip"
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
