cask "snip-snap@beta" do
  version "0.5.1-beta.80"
  sha256 "453492b5f37394a7cb12bdb0c63630e7c9f970b8c2db65c16d1d7bfcf2948112"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.80/Snip-Snap-0.5.1.zip"
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
