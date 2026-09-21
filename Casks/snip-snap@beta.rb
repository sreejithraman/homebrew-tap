cask "snip-snap@beta" do
  version "0.5.1-beta.83"
  sha256 "cef4e4113fcb327f1753bd5f13283efd0c0ebf1d292624d8cb8cf3b2a4cef32d"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.83/Snip-Snap-0.5.1.zip"
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
