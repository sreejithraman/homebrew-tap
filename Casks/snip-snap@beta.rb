cask "snip-snap@beta" do
  version "0.5.1-beta.76"
  sha256 "b59a9110b947a8f9d54cec1315896126160d4f14a1850d6165704c6c18331f74"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.76/Snip-Snap-0.5.1.zip"
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
