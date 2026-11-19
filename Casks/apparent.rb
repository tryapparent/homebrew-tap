cask "apparent" do
  version "0.22.10"
  sha256 "be99fd6bb3ee50efb9441f8f76ea5041cc76aae8af6fabd3393efa635da9331d"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.10/Apparent-Preview-#{version}-arm64.dmg",
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
