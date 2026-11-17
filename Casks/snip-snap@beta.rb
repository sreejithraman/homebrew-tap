cask "snip-snap@beta" do
  version "0.6.1-beta.281"
  sha256 "6e93f2b076df2893d3ffb4deb162e26272bf918298c1abf499f371a96b9898c9"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.281/Snip-Snap-0.6.1.zip"
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
