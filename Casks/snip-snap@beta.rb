cask "snip-snap@beta" do
  version "0.6.1-beta.276"
  sha256 "55077d05221e3aba8a932f91c82f37ae95ed0d772c2a1d51b23b521247f71df7"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.276/Snip-Snap-0.6.1.zip"
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
