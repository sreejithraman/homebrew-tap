cask "snip-snap@beta" do
  version "0.6.1-beta.287"
  sha256 "81e19cac7432e59b5051d39c9aa13452b9d076b763455ad291b5f475e835bf8d"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.287/Snip-Snap-0.6.1.zip"
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
