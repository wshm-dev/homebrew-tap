class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.11-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.11-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89964f83e54fe939e52b3722863e86b0f9b285f72f3da1a8fc21643c952cd8b"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.11-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dabf3df4ad3740317ae74f56737be080ebf80caa56fec8900a3bbbd1727b276"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
