class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.28.0-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.28.0-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c3089c9cb19e602f1f17b970f5418ba153d85e57190ef0c73d7ddeede639ace"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
