cask "snip-snap@beta" do
  version "0.6.1-beta.151"
  sha256 "7c4cceed70431e3b7eea1cb6e6cc18401ef6837e3ead2af18260fa4689c5e302"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.151/Snip-Snap-0.6.1.zip"
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
