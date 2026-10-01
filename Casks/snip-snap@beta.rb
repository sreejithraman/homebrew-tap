cask "snip-snap@beta" do
  version "0.6.0-beta.133"
  sha256 "90f4507b1ac0a68c9f03b42270174c9e0171d11a649a132bbe12e50541d79392"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.0-beta.133/Snip-Snap-0.6.0.zip"
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
