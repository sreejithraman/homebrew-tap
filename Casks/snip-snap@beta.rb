cask "snip-snap@beta" do
  version "0.5.1-beta.102"
  sha256 "1146c27dea64fdc3c1a4d7f558972329037857020009592297e3500ab8c79593"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.102/Snip-Snap-0.5.1.zip"
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
