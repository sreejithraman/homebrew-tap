cask "snip-snap@beta" do
  version "0.5.0-beta.23"
  sha256 "876cb086ee849fa34ce8037dcdc36ae60c28f3f0145b141161caf4749f070d26"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.23/Snip-Snap-0.5.0.zip"
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
