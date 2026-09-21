cask "snip-snap@beta" do
  version "0.5.1-beta.84"
  sha256 "68410c8f7608d61ca9b6113f717b8c6cb31a927f5fa7c7616abc1ac1046f37f3"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.84/Snip-Snap-0.5.1.zip"
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
