cask "snip-snap@beta" do
  version "0.5.1-beta.108"
  sha256 "2a480658457ac5a5640592d362c72e0187e7639cee8e4a5a1096f2f547df453f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.108/Snip-Snap-0.5.1.zip"
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
