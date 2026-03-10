class Lazygaze < Formula
  desc "AI-powered git diff review in your terminal."
  homepage "https://github.com/benstroud/lazygaze"
  version "20260310.1.beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260310.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "953d419dceb6bb60855c7bf3f5913146ac449583abe96206135b7f7bde1658c1"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260310.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "953d419dceb6bb60855c7bf3f5913146ac449583abe96206135b7f7bde1658c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260310.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "953d419dceb6bb60855c7bf3f5913146ac449583abe96206135b7f7bde1658c1"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260310.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "953d419dceb6bb60855c7bf3f5913146ac449583abe96206135b7f7bde1658c1"
    end
  end

  def install
    bin.install "lazygaze"
  end

  test do
    assert_match "Review git diffs", shell_output("#{bin}/lazygaze --help")
  end
end