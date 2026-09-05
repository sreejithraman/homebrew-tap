cask "snip-snap@beta" do
  version "0.5.0-beta.42"
  sha256 "13bf0b15039bf91732d975715fc17fdf4c6aefa5eb9adb3e1e4f1507574726d0"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.42/Snip-Snap-0.5.0.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
