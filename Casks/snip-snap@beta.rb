cask "snip-snap@beta" do
  version "0.5.0-beta.43"
  sha256 "bad5625ff04f98cb3ce4b005bd9a9abd6567f7ed3aef4da351a679f7e153a606"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.43/Snip-Snap-0.5.0.zip"
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
