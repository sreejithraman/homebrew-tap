cask "snip-snap@beta" do
  version "0.6.1-beta.298"
  sha256 "cacad57709d31a6c7e6a6595982562401d487e5d74bf9bcb1bd3a36c8a0d6afe"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.298/Snip-Snap-0.6.1.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"
  binary "#{appdir}/Snip Snap.app/Contents/MacOS/snipsnap"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
