cask "snip-snap@beta" do
  version "0.6.1-beta.144"
  sha256 "b94d13dcd6b90407b18afa03ac8d942134a850ded801f51ea08de81cb763d6a3"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.144/Snip-Snap-0.6.1.zip"
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
