cask "snip-snap@beta" do
  version "0.5.0-beta.53"
  sha256 "66641109363bb17b3e4221344a3219fa931fd11758fe30f5a2508392918f0488"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.53/Snip-Snap-0.5.0.zip"
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
