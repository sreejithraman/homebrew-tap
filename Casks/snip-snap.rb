cask "snip-snap" do
  version "0.3.0"
  sha256 "3625b28b2034b7e52fdcd8e6289ae3baec5bcb79f99f67666df7dc7dd929112f"

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
