cask "apparent" do
  version "0.22.11"
  sha256 "ab51740dcb44df294b017b4cfc28fba63d2c63a090d1ce1e14f20f3109d09f6e"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.11/Apparent-Preview-#{version}-arm64.dmg",
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
