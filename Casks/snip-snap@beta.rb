cask "snip-snap@beta" do
  version "0.6.0-beta.115"
  sha256 "fb8cea73b433ac244b2014dcc963337ed24851c958294d730f4cb202173b8e19"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.115/Snip-Snap-0.6.0.zip"
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
