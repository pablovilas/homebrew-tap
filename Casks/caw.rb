cask "caw" do
  version "0.0.7"
  sha256 "1f55f489b0c24c5d7203f874727a683184e4c6cf9f22de5571307641e4f476ec"

  url "https://github.com/pablovilas/caw/releases/download/v#{version}/caw_#{version}_macos_arm64.app.zip"
  name "caw"
  desc "Monitor your AI coding assistants"
  homepage "https://github.com/pablovilas/caw"

  app "caw.app"
  binary "#{appdir}/caw.app/Contents/MacOS/caw"

  zap trash: [
    "~/Library/Preferences/com.pablovilas.caw.plist",
  ]
end
