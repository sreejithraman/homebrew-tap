cask "snip-snap" do
  version "0.6.0"
  sha256 "b9d9c03529ca8eba3098ee5045d264597bd00db178c3e26905bcc9610e84fdc5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v#{version}/Snip-Snap-#{version}.zip"
  name "Snip Snap"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  depends_on macos: :tahoe

  app "Snip Snap.app"
  binary "#{appdir}/Snip Snap.app/Contents/MacOS/snipsnap"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
