cask "snip-snap" do
  version "0.4.0"
  sha256 "6ade83b3109d942c6a55d6a1741e1dff91a6c3809e31bbd93f5bd0838e39487c"

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
