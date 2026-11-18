cask "apparent" do
  version "0.22.8"
  sha256 "354aa3be07f208153ca1d521574874780f5e45ab496778b1e27474c814de791b"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.8/Apparent-Preview-#{version}-arm64.dmg",
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
