class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.6-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.6-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd1612255ac4d62dccd938886be01b74da2eb8b4f30f2ae88942711b22e90e4d"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.6-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9d44df50e9b1322850cd83bc49ed6dc1f6f5c441d10d5f943747a3b43cf3d19"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
