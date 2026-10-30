cask "snip-snap@beta" do
  version "0.6.1-beta.171"
  sha256 "8652f855a770215790a4d7b1fcee4f46f8d2816acb4b65309e96324c23dc50fd"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.6.1-beta.171/Snip-Snap-0.6.1.zip"
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
