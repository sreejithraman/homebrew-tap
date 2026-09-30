cask "snip-snap@beta" do
  version "0.6.0-beta.121"
  sha256 "e66da3a9381f366dfce36fcf8edd854c885f1fa6509f467f3a7bc5a25085de03"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.121/Snip-Snap-0.6.0.zip"
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
