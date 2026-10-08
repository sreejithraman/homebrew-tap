cask "snip-snap@beta" do
  version "0.6.1-beta.150"
  sha256 "5dbcec5826da7eafeca34dd9dfb6c46518d613c89e43a82aa4f25775fe3c5c21"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.150/Snip-Snap-0.6.1.zip"
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
