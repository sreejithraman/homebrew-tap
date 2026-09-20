cask "snip-snap@beta" do
  version "0.5.1-beta.78"
  sha256 "916570ddd0ba1b5551ee628cbc2c691ffd416b740f5c97685983f7598b89591b"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.78/Snip-Snap-0.5.1.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
