cask "apparent" do
  version "0.22.15"
  sha256 "fb087240de5b0f86336a5652ba4cab360a85cc9e5bc5a54bd665a55aef31aec8"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.15/Apparent-Preview-#{version}-arm64.dmg",
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
