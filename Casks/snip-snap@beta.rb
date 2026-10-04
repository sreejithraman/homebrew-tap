cask "snip-snap@beta" do
  version "0.6.1-beta.149"
  sha256 "411092001c7081856332113375e8bbb0f9c20aff24c5fa741c535191e4436afe"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.149/Snip-Snap-0.6.1.zip"
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
