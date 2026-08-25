cask "snip-snap" do
  version "0.2.0"
  sha256 "ca6cb3367dd1e474891a5c2f16c5fecc664e346a1870d1f1f5fff02177d93512"

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
