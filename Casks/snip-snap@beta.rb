cask "snip-snap@beta" do
  version "0.5.0-beta.27"
  sha256 "318561c2821a3cd82e7effaf29752a0bf4331d566f53e5fd386437bec7bec8e1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.27/Snip-Snap-0.5.0.zip"
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
