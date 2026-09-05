cask "snip-snap@beta" do
  version "0.5.0-beta.40"
  sha256 "988d45f3167b6589603e66c2b14d5a631ad90addca0c4e9c987a17c5e21df394"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.40/Snip-Snap-0.5.0.zip"
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
