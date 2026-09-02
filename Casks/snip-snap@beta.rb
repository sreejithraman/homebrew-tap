cask "snip-snap@beta" do
  version "0.5.0-beta.21"
  sha256 "472252e0bb1e8d875623a2920a677e2153d890fd1624b9d93bbf2898c16f344e"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.21/Snip-Snap-0.5.0.zip"
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
