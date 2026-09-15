cask "snip-snap@beta" do
  version "0.5.1-beta.73"
  sha256 "8c277605d634168352f538e8e7d92f527860330cb0b81ecb8993fc49ada5f52c"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.73/Snip-Snap-0.5.1.zip"
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
