cask "snip-snap@beta" do
  version "0.5.1-beta.104"
  sha256 "1a51e5ded7c21d4ecdb62948b506125e3e0b341777dfb5048d56ce3c1455da3f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.104/Snip-Snap-0.5.1.zip"
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
