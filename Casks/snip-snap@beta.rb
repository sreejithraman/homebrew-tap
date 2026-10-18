cask "snip-snap@beta" do
  version "0.6.1-beta.157"
  sha256 "d2b648b94a87bc53daa1d04e72dc8328eceee7f097f7595dc1449a0df39c9f31"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.157/Snip-Snap-0.6.1.zip"
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
