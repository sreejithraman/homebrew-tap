cask "snip-snap@beta" do
  version "0.6.1-beta.192"
  sha256 "40099423233a0804816cec4cbf276860c34e46a6108a7b65e32fb0b45bba7696"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.192/Snip-Snap-0.6.1.zip"
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
