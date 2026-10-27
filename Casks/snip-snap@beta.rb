cask "snip-snap@beta" do
  version "0.6.1-beta.166"
  sha256 "e885ddf0b84760c82c2932183e7908d744e8a4fceaa6ba68cc02187d52d850a7"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.166/Snip-Snap-0.6.1.zip"
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
