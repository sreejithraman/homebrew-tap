cask "snip-snap@beta" do
  version "0.5.0-beta.34"
  sha256 "2ecffe96507bba9419c25f15e33c9ef49f512be29684bed02cdc16c3e66afbc1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.34/Snip-Snap-0.5.0.zip"
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
