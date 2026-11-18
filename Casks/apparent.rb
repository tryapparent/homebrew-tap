cask "apparent" do
  version "0.22.9"
  sha256 "9a6b368c167576d0659aab1e16a75366c4fc250eecb22579c64fd6dd878a805d"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.9/Apparent-Preview-#{version}-arm64.dmg",
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
