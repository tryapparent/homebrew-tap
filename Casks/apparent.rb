cask "apparent" do
  version "0.22.14"
  sha256 "5d726da1802ab823a5887513cd38e348978e0f832cfc6906709de20295926d85"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.14/Apparent-Preview-#{version}-arm64.dmg",
      verified: "github.com/tryapparent/apparent/"
  name "Apparent Preview"
  desc "Record your screen, voice, and annotations for coding agents"
  homepage "https://app.tryapparent.com/"

  livecheck do
    url "https://raw.githubusercontent.com/tryapparent/apparent/preview-mac-feed/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Install apparent.app/Contents/SharedSupport/Apparent Preview.app", target: "Apparent Preview.app"
end
