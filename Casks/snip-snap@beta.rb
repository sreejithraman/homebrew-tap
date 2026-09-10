cask "snip-snap@beta" do
  version "0.5.0-beta.60"
  sha256 "1afdae3f90aaa1b562390dced382478edf2112324ee4433d660132159600e8c1"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.60/Snip-Snap-0.5.0.zip"
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
