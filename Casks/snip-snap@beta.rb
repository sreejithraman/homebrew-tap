cask "snip-snap@beta" do
  version "0.5.0-beta.28"
  sha256 "338fa86660a8e0532fa9c98dee527ea92120364c3952cfd02b8e8c24bec3b1ac"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.28/Snip-Snap-0.5.0.zip"
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
