cask "snip-snap@beta" do
  version "0.5.0-beta.59"
  sha256 "6dd9743511341c82142ef48a2cf94580be04de973817ca74154b057a15701a24"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.59/Snip-Snap-0.5.0.zip"
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
