cask "brickstore" do
  version "2026.3.1"
  sha256 "a5fef2a79b5e16e454bb6c9d78fa41b0e6c1b994c983a4deb7d860b6e4b5b150"

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/macOS-BrickStore-#{version}.dmg",
      verified: "github.com/rgriebl/brickstore/"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "BrickStore.app"

  zap trash: [
    "~/Library/Preferences/de.brickforge.brickstore.plist",
    "~/Library/Preferences/org.brickstore.BrickStore.plist",
    "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
  ]
end
