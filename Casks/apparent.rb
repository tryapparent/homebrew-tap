cask "apparent" do
  version "0.22.7"
  sha256 "787d7445cd3ec450874c220d2b081e63f947b8f909d68e0b9faf702f175cdf93"

  url "https://github.com/tryapparent/apparent/releases/download/preview-mac-22-7/Apparent-Preview-#{version}-arm64.dmg",
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
