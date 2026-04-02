# typed: false
# frozen_string_literal: true

# Homebrew formula for wshm — AI-powered GitHub agent
# Install: brew tap wshm-dev/tap && brew install wshm
class Wshm < Formula
  desc "AI-powered GitHub agent for repository maintenance"
  homepage "https://wshm.dev"
  version "0.25.0"
  license "SSPL-1.0"

  on_macos do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v#{version}/wshm-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_INTEL"
    end

    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v#{version}/wshm-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v#{version}/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_INTEL"
    end

    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v#{version}/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match "wshm #{version}", shell_output("#{bin}/wshm --version")
  end
end
