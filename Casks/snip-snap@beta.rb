cask "snip-snap@beta" do
  version "0.6.1-beta.181"
  sha256 "b94c3843d593c953671642cb7762f9d0e53b4dd96d922b346e061d2dd2956689"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.181/Snip-Snap-0.6.1.zip"
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
