cask "snip-snap@beta" do
  version "0.6.1-beta.283"
  sha256 "277e6ca76e2a24a39c80441f4a9c0d93196a640b71306e54750a490b59a08050"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.283/Snip-Snap-0.6.1.zip"
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
