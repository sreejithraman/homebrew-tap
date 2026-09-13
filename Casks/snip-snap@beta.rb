cask "snip-snap@beta" do
  version "0.5.1-beta.69"
  sha256 "53008c632dc495978f64eb5aea477994ae34421fe7c90f30cad54fea5f4054a3"

  url "https://github.com/sreejithraman/snip-snap/releases/download/v0.5.1-beta.69/Snip-Snap-0.5.1.zip"
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
