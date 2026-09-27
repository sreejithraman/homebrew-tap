cask "snip-snap@beta" do
  version "0.5.1-beta.106"
  sha256 "f67fbfe25339c2d38f7e173e9078687987f4ebb7ffba7c49a6eb450f739a3677"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.106/Snip-Snap-0.5.1.zip"
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
