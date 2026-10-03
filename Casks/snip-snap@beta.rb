cask "snip-snap@beta" do
  version "0.6.1-beta.148"
  sha256 "99c8ed0241c509afe74e3676ecc17e27904f7f7bb3e56bf583da7ef20165442a"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.148/Snip-Snap-0.6.1.zip"
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
