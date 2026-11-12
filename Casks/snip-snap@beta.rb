cask "snip-snap@beta" do
  version "0.6.1-beta.180"
  sha256 "66da0825fd82e4cc1bb6704f6df42112044f90dd4d94c5dc8f3e700497a8bbd4"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.180/Snip-Snap-0.6.1.zip"
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
