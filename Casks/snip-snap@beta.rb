cask "snip-snap@beta" do
  version "0.6.1-beta.163"
  sha256 "22c6843299c9f8d3032b5a3e984fe227b15bb5acde23d1b8a65b090375bbf184"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.163/Snip-Snap-0.6.1.zip"
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
