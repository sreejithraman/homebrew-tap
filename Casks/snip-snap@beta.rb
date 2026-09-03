cask "snip-snap@beta" do
  version "0.5.0-beta.29"
  sha256 "10461a50d9374a51f73eed3199eaa6624a481513ee16f34971de5198794c0ce2"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.29/Snip-Snap-0.5.0.zip"
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
