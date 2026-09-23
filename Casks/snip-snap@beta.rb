cask "snip-snap@beta" do
  version "0.5.1-beta.96"
  sha256 "39ff5d46459e3531045dfee6ad9c8e385fa8606739f2b578ac91d09852cfa3e1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.96/Snip-Snap-0.5.1.zip"
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
