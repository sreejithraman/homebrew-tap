cask "snip-snap@beta" do
  version "0.6.0-beta.120"
  sha256 "3efbe227d059a4fa3d11fae075fdf4f22dacbf091da10f4678d99c77745a4754"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.120/Snip-Snap-0.6.0.zip"
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
