cask "apparent" do
  version "0.22.4"
  sha256 "258ff1d4789f08b6ea587d8b10e2c0d520497dd4e9e7ef48834e6cc4fd453fe9"

  url "https://github.com/tryapparent/apparent/releases/download/preview-mac-22-4/Apparent-Preview-#{version}-arm64.dmg",
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
