cask "snip-snap@beta" do
  version "0.5.0-beta.41"
  sha256 "218bfe25dbf77205bae22330242d77b7c399b240e470eea8f2170dfb5ba2047f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.41/Snip-Snap-0.5.0.zip"
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
