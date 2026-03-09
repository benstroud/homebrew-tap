class Lazygaze < Formula
  desc "AI-powered git diff review in your terminal."
  homepage "https://github.com/benstroud/lazygaze"
  version "20260308.5.beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.5.beta/lazygaze-macos-universal.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.5.beta/lazygaze-macos-universal.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.5.beta/lazygaze-macos-universal.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260308.5.beta/lazygaze-macos-universal.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "lazygaze"
  end

  test do
    assert_match "Review git diffs", shell_output("#{bin}/lazygaze --help")
  end
end