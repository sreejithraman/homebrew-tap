cask "snip-snap@beta" do
  version "0.6.1-beta.156"
  sha256 "1511ce6d25001c54f5d7301db5bcadeed54511d253f632791961335676c7709f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.156/Snip-Snap-0.6.1.zip"
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
