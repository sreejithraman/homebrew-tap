cask "snip-snap@beta" do
  version "0.6.1-beta.169"
  sha256 "50dc72fab19fd2c913b8b22f07a70246cfebc4d8d80dd26f73869ab3cd9c9ca1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.169/Snip-Snap-0.6.1.zip"
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
