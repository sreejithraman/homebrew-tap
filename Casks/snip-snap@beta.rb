cask "snip-snap@beta" do
  version "0.5.0-beta.22"
  sha256 "8166c3e9db1ac174d2a595ae088b06474f5c62c6f216d19248fddf35cebdb89f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.0-beta.22/Snip-Snap-0.5.0.zip"
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
