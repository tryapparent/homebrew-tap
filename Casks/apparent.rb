cask "apparent" do
  version "0.22.5"
  sha256 "fa8ec5c758154f285c81b409985c2410c2495f2ffd283a4c09980f479d295a7b"

  url "https://github.com/tryapparent/apparent/releases/download/preview-mac-22-5/Apparent-Preview-#{version}-arm64.dmg",
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
