cask "snip-snap@beta" do
  version "0.5.1-beta.100"
  sha256 "5970b35fa85a2f9ebae1d10f4581dc271ff8d3ef8e109731ca05e9713b84b339"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.100/Snip-Snap-0.5.1.zip"
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
