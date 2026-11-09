cask "snip-snap@beta" do
  version "0.6.1-beta.175"
  sha256 "984702180a1d7f0e2aae75644a0f3b282724b66d2b0dfd33451c0e94bcc4ddab"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.175/Snip-Snap-0.6.1.zip"
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
