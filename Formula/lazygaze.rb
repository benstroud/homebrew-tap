class Lazygaze < Formula
  desc "AI-powered git diff review in your terminal."
  homepage "https://github.com/benstroud/lazygaze"
  version "20260309.1.beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260309.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "eb3e5eec76b87158f7a9cad73db787119b9610f12f05189feb4d3334f02c19e1"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260309.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "eb3e5eec76b87158f7a9cad73db787119b9610f12f05189feb4d3334f02c19e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/benstroud/lazygaze/releases/download/20260309.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "eb3e5eec76b87158f7a9cad73db787119b9610f12f05189feb4d3334f02c19e1"
    else
      url "https://github.com/benstroud/lazygaze/releases/download/20260309.1.beta/lazygaze-macos-universal.tar.gz"
      sha256 "eb3e5eec76b87158f7a9cad73db787119b9610f12f05189feb4d3334f02c19e1"
    end
  end

  def install
    bin.install "lazygaze"
  end

  test do
    assert_match "Review git diffs", shell_output("#{bin}/lazygaze --help")
  end
end