cask "snip-snap@beta" do
  version "0.6.1-beta.271"
  sha256 "c499f48a165c4553b12979646a07fe12980a917c558f972b10f8bbee3dd6fbce"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.271/Snip-Snap-0.6.1.zip"
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
