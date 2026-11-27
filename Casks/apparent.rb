cask "apparent" do
  version "0.22.19"
  sha256 "c2fee055f81de09ed5f53d55c3c0eaee8ea2987dce2438e6e4fa6e6c2d728aae"

  url "https://github.com/tryapparent/apparent/releases/download/v0.22.19/Apparent-Preview-#{version}-arm64.dmg",
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
