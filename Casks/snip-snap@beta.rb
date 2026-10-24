cask "snip-snap@beta" do
  version "0.6.1-beta.158"
  sha256 "a6b70640c3576cf4d387c067aed96262a0b7a5c964df170673f1560b5a0aea96"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.158/Snip-Snap-0.6.1.zip"
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
