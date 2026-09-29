cask "snip-snap@beta" do
  version "0.6.0-beta.117"
  sha256 "f4c56f07dfb26e156f76a9e4cc8352bc0dfc95372ada5cbe4236c9ecdf9b8099"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.117/Snip-Snap-0.6.0.zip"
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
