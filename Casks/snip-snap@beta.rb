cask "snip-snap@beta" do
  version "0.6.1-beta.282"
  sha256 "a3905e8285bcd80457e69bad3fcc30fb55a3eec192c676ff96fe477a77c3c51a"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.282/Snip-Snap-0.6.1.zip"
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
