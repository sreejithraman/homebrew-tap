cask "snip-snap@beta" do
  version "0.6.0-beta.130"
  sha256 "c280205a6eaf72ead718286abfc95df488740398ac0cf932667da2cc070de977"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.130/Snip-Snap-0.6.0.zip"
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
