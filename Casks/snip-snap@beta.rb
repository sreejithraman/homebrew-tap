cask "snip-snap@beta" do
  version "0.5.0-beta.24"
  sha256 "24784b6bb58a6d5101d6e932e736148a9e55b01df13c5522dda033b0f4227909"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.24/Snip-Snap-0.5.0.zip"
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
