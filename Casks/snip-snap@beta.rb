cask "snip-snap@beta" do
  version "0.5.0-beta.50"
  sha256 "d848e079cc5c7e516ddd7dcafcab7728e5014689f1d40fc310e4781b174525a2"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.50/Snip-Snap-0.5.0.zip"
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
