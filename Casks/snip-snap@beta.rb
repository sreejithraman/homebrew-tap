cask "snip-snap@beta" do
  version "0.6.1-beta.185"
  sha256 "00d3933aca98d06499696542e6111e80c0385481763d4b6a65935f8ac719b8ea"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.185/Snip-Snap-0.6.1.zip"
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
