cask "snip-snap@beta" do
  version "0.5.1-beta.82"
  sha256 "f208830699835296e2ae3798b993ac8ef137530453b3c5ccea2bc8de4049a94f"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.82/Snip-Snap-0.5.1.zip"
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
