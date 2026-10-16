cask "snip-snap@beta" do
  version "0.6.1-beta.152"
  sha256 "26b37bcfdcc6f0e4f979223d42891f987e8868bfe480a1b97469c17f6044500e"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.152/Snip-Snap-0.6.1.zip"
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
