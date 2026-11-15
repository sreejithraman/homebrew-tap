cask "snip-snap@beta" do
  version "0.6.1-beta.201"
  sha256 "475400b0bc114b872759c100b6f9e9fadf5909dd09729fde103faf8a4af073de"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.201/Snip-Snap-0.6.1.zip"
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
