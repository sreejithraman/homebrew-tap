cask "snip-snap@beta" do
  version "0.6.1-beta.296"
  sha256 "14cac3022ceeed891694d88bd64a098fc6ea3873341916e1561aedc5c34e02d0"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.296/Snip-Snap-0.6.1.zip"
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
