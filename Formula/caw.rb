class Caw < Formula
  desc "Monitor your AI coding assistants"
  homepage "https://github.com/pablovilas/caw"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pablovilas/caw/releases/download/v#{version}/caw-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    elsif Hardware::CPU.intel?
      url "https://github.com/pablovilas/caw/releases/download/v#{version}/caw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "caw"
  end

  test do
    assert_match "coding assistant watcher", shell_output("#{bin}/caw --help")
  end
end
