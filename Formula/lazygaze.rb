class Lazygaze < Formula
  desc "AI-powered git diff review in your terminal."
  homepage "https://github.com/benstroud/lazygaze"
  version "20260308.6.beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.6.beta/lazygaze-macos-universal.tar.gz"
      sha256 "23a7b10c3ab40db65fc22500da574a5cb1ecb3f7d5fc04f8dd1c08fce2441e93"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.6.beta/lazygaze-macos-universal.tar.gz"
      sha256 "23a7b10c3ab40db65fc22500da574a5cb1ecb3f7d5fc04f8dd1c08fce2441e93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.6.beta/lazygaze-macos-universal.tar.gz"
      sha256 "23a7b10c3ab40db65fc22500da574a5cb1ecb3f7d5fc04f8dd1c08fce2441e93"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.6.beta/lazygaze-macos-universal.tar.gz"
      sha256 "23a7b10c3ab40db65fc22500da574a5cb1ecb3f7d5fc04f8dd1c08fce2441e93"
    end
  end

  def install
    bin.install "lazygaze"
  end

  test do
    assert_match "Review git diffs", shell_output("#{bin}/lazygaze --help")
  end
end