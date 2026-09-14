cask "snip-snap@beta" do
  version "0.5.1-beta.72"
  sha256 "cfb3ea73988593712f0e6162b2fd9da309bc57121ec84afe22481eff6569240e"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.72/Snip-Snap-0.5.1.zip"
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
