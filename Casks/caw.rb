cask "caw" do
  version "0.0.7"
  sha256 "65dd2d3b3bde008e9edb0656267153551c14d26c72b415e7ca0ed7dd5be849c0"

  url "https://github.com/pablovilas/caw/releases/download/v#{version}/caw_#{version}_macos_arm64.app.zip"
  name "caw"
  desc "Monitor your AI coding assistants"
  homepage "https://github.com/pablovilas/caw"

  app "caw.app"
  binary "#{appdir}/caw.app/Contents/MacOS/caw"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/caw.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.pablovilas.caw.plist",
  ]
end
