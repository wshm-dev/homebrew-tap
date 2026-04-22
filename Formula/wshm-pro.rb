class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.28.1-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.28.1-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7f8499b304617f06d6e4513d28eddf4cad925e5f64318b06e318593391014e8"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
