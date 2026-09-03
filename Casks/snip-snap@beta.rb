cask "snip-snap@beta" do
  version "0.5.0-beta.25"
  sha256 "fb8ed8a1c6448dcb8b8f85f320d95165fe170fbbb47da417be8d94599b7510d4"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.25/Snip-Snap-0.5.0.zip"
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
