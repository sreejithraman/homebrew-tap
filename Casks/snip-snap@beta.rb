cask "snip-snap@beta" do
  version "0.6.0-beta.136"
  sha256 "b9d9c03529ca8eba3098ee5045d264597bd00db178c3e26905bcc9610e84fdc5"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.136/Snip-Snap-0.6.0.zip"
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
