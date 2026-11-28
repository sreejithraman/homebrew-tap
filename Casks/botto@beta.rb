cask "botto@beta" do
  version "0.2.0-beta.1"
  sha256 "33281cd5d4a11605b302b058465ef709a601c8db4c161b466941b616d76fb2bf"

  url "https://github.com/sreejithraman/Botto/releases/download/v0.2.0-beta.1/Botto-0.2.0-beta.1.zip"
  name "Botto Beta"
  desc "Native Mac companion and local T3 engine host for Botto (beta channel)"
  homepage "https://github.com/sreejithraman/Botto"

  auto_updates true
  conflicts_with cask: "botto"
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Botto.app"

  zap trash: [
    "~/Library/Application Support/Botto",
    "~/Library/Caches/com.sree.botto.mac",
    "~/Library/Preferences/com.sree.botto.mac.plist",
  ]
end
