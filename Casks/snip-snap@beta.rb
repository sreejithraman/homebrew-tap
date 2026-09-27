cask "snip-snap@beta" do
  version "0.5.1-beta.107"
  sha256 "894ff490b16db8d425ad0e7252b08382e8ab3859073ae7198bac37d239b981d5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.107/Snip-Snap-0.5.1.zip"
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
