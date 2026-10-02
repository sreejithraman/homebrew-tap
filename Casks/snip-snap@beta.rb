cask "snip-snap@beta" do
  version "0.6.1-beta.145"
  sha256 "16bc5070322c68b16e567bfe787ccacc225c52a745c257c5258e43065dbf73f5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.145/Snip-Snap-0.6.1.zip"
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
