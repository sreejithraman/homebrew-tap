cask "snip-snap@beta" do
  version "0.5.1-beta.70"
  sha256 "e92b7860be4cb6961b589186de3103fb26703ce7552696da816ef1b824901d90"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.70/Snip-Snap-0.5.1.zip"
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
