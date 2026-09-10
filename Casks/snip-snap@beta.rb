cask "snip-snap@beta" do
  version "0.5.0-beta.61"
  sha256 "dc37583d3b01c181c336441ed4c8b7d1136d0115e71830722fbf1b559821e449"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.61/Snip-Snap-0.5.0.zip"
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
