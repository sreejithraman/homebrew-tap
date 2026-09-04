cask "snip-snap@beta" do
  version "0.5.0-beta.39"
  sha256 "bc44384200dbefa750f43e23d2c6128f568af519a3a8027673b791be9cb82df4"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.39/Snip-Snap-0.5.0.zip"
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
