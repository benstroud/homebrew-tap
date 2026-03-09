class Lazygaze < Formula
  desc "AI-powered git diff review in your terminal."
  homepage "https://github.com/benstroud/lazygaze"
  version "20260308.1.beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/v#{version}/lazygaze_#{version}_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/benstroud/lazygaze/releases/download/v#{version}/lazygaze_#{version}_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/v#{version}/lazygaze_#{version}_linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/benstroud/lazygaze/releases/download/v#{version}/lazygaze_#{version}_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "lazygaze"
  end

  test do
    assert_match "Review git diffs", shell_output("#{bin}/lazygaze --help")
  end
end