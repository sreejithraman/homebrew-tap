cask "snip-snap@beta" do
  version "0.5.0-beta.54"
  sha256 "b4dc40b147af453fc4aee42ba2c560001c56950088fe24f2e71577b4dc2b120e"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.54/Snip-Snap-0.5.0.zip"
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
