cask "snip-snap@beta" do
  version "0.6.1-beta.172"
  sha256 "13ddf9ee03c6be4d0f8e3fc4a795f1c9dd94f8b4e0fbe2cb9f4a7f1f9a9288e7"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.172/Snip-Snap-0.6.1.zip"
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
