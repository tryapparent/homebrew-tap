cask "apparent" do
  version "0.22.13"
  sha256 "dbf909ad1cf91cd6523db4ae6981f4a61a9e30223db9d9546c186fa843c21f7f"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.13/Apparent-Preview-#{version}-arm64.dmg",
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

  app "Install apparent.app/Contents/SharedSupport/Apparent Preview.app", target: "Apparent Preview.app"
end
