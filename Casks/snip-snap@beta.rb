cask "snip-snap@beta" do
  version "0.5.0-beta.36"
  sha256 "3f757e48784001e24539723d7752f1144d1a8d2b1119dfb89f73c962bdcfc77f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.36/Snip-Snap-0.5.0.zip"
  name "Snip Snap Beta"
  desc "Keep saved snips ready to use later"
  homepage "https://sree.world/snip-snap"

  auto_updates true
  conflicts_with cask: "snip-snap"
  depends_on macos: :tahoe

  app "Snip Snap.app"

  zap trash: [
    "~/Library/Caches/world.sree.snipsnap",
    "~/Library/Preferences/world.sree.snipsnap.plist",
  ]
end
