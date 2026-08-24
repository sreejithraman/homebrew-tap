cask "snip-snap" do
  version "0.1.0"
  sha256 "166911d13dc97995b77e8019d60a9b1c27c9bd64587b5890fa2e244aa11f15d6"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v#{version}/Snip-Snap-#{version}.zip"
  name "Snip Snap"
  desc "Keep clips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  depends_on macos: :tahoe

  app "Snip Snap.app"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
