cask "snip-snap@beta" do
  version "0.6.0-beta.135"
  sha256 "f0b8568ada56c240d8742a278c7cff9e55e02900cc61bc60db49518a651c2407"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.135/Snip-Snap-0.6.0.zip"
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
