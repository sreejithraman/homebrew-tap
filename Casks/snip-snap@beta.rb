cask "snip-snap@beta" do
  version "0.6.1-beta.153"
  sha256 "757379fba467816e32549e61de4fa6408efbac3c5e199d53c50ab28aa4857a8d"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.153/Snip-Snap-0.6.1.zip"
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
