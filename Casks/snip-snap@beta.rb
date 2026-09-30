cask "snip-snap@beta" do
  version "0.6.0-beta.124"
  sha256 "bb0c3ba52c01c0d1cc97d678d193b864c86f611724f8eb6c8e27ee8192b8f06b"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.124/Snip-Snap-0.6.0.zip"
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
