cask "snip-snap@beta" do
  version "0.6.1-beta.187"
  sha256 "4e91c2760fe17b85623e136808153200875af62a6bb369b36e764c9cce7d3553"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.187/Snip-Snap-0.6.1.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"
  binary "#{appdir}/Snip Snap.app/Contents/MacOS/snipsnap"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
