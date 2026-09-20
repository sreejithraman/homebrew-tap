cask "snip-snap@beta" do
  version "0.5.1-beta.77"
  sha256 "4cb1dea95984dfd453b2ad0c56c2309ae4fbb3e143ab5c64b47ee2cf6b12bbc7"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.77/Snip-Snap-0.5.1.zip"
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
