cask "snip-snap@beta" do
  version "0.6.0-beta.116"
  sha256 "09d994b662221afdec581b17da0068cda957bb1176110958a05c0107b7cf42b5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.116/Snip-Snap-0.6.0.zip"
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
