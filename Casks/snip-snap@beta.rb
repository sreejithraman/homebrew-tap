cask "snip-snap@beta" do
  version "0.6.1-beta.159"
  sha256 "a41d69db7953d4b6809be1bb813082d928ef5eff81949d8f914915a8379d9c31"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.159/Snip-Snap-0.6.1.zip"
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
