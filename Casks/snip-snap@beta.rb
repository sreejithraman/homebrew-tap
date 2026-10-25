cask "snip-snap@beta" do
  version "0.6.1-beta.164"
  sha256 "1c4410a06fc882f8f3b882042e6291ad04cc949cd614aead3129794ff1a465e1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.164/Snip-Snap-0.6.1.zip"
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
