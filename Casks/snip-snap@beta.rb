cask "snip-snap@beta" do
  version "0.6.1-beta.173"
  sha256 "f48c64c16c356abac617ab022c629b5ff46faadc47b1695bcdd87f053d8ba670"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.173/Snip-Snap-0.6.1.zip"
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
