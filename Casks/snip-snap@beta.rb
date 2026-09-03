cask "snip-snap@beta" do
  version "0.5.0-beta.32"
  sha256 "dbcbf04b428d0333061330b62a8450b4636ee0eca4d254004277c055ab1a02be"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.32/Snip-Snap-0.5.0.zip"
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
