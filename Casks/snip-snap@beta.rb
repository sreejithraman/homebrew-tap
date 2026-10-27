cask "snip-snap@beta" do
  version "0.6.1-beta.167"
  sha256 "2788993dfb26e54ad8aa2da4594e03a13fb88549b2a91ff0720162343f585ce2"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.167/Snip-Snap-0.6.1.zip"
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
