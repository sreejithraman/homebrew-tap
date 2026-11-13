cask "snip-snap@beta" do
  version "0.6.1-beta.183"
  sha256 "acc654538c859b536fa2bc33e13aa907d5f52cd17d33a6179244fad890126be5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.183/Snip-Snap-0.6.1.zip"
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
