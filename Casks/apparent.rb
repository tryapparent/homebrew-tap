cask "apparent" do
  version "0.22.12"
  sha256 "6721404f1629a0515dcda410f3128efd3e35cce0f68de305fedc89ee1ede9aee"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.12/Apparent-Preview-#{version}-arm64.dmg",
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
