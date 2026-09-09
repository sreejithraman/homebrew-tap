cask "snip-snap@beta" do
  version "0.5.0-beta.55"
  sha256 "de8c45abea756246f4eb36102154009f2b071df7e6dd85e8abb87249b047f386"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.55/Snip-Snap-0.5.0.zip"
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
