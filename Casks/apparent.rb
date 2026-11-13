cask "apparent" do
  version "0.22.3"
  sha256 "5328c387ebc5d8e3a7ac6c51778841fb5a9531f5511f549f0bc4ee55bfdbe064"

  url "https://github.com/tryapparent/apparent/releases/download/preview-mac-22-3/Apparent-Preview-#{version}-arm64.dmg",
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
