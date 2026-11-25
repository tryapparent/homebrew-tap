cask "apparent" do
  version "0.22.17"
  sha256 "a7c5ffb5cc4686787aa1d5149cdbb77ff93b005648f68f36116d157527eec2e8"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.17/Apparent-Preview-#{version}-arm64.dmg",
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
