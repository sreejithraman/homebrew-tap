cask "snip-snap@beta" do
  version "0.6.1-beta.285"
  sha256 "34a6eda868f34a628131b5389e1330e9765e51e0aa800dddd9461819d9072b8e"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.285/Snip-Snap-0.6.1.zip"
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
