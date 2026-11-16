cask "apparent" do
  version "0.22.6"
  sha256 "1a72e5ca47455aa0f08bd9b64eb90cdcb21f7a117e165028fee7047277520a9e"

  url "https://github.com/tryapparent/apparent/releases/download/preview-mac-22-6/Apparent-Preview-#{version}-arm64.dmg",
      verified: "github.com/tryapparent/apparent/"
  name "Apparent Preview"
  desc "Record your screen, voice, and annotations for coding agents"
  homepage "https://tryapparent.com/"

  livecheck do
    url "https://raw.githubusercontent.com/tryapparent/apparent/preview-mac-feed/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Apparent Preview.app"
end
