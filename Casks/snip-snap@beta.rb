cask "snip-snap@beta" do
  version "0.5.0-beta.45"
  sha256 "fbfa3f5e5d5539cf616e3e45ce5afa2eaae396e05d664dbe828dc031d48893e0"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.45/Snip-Snap-0.5.0.zip"
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
