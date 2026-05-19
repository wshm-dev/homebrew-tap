class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.14-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.14-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "017782fef0a063983ba8c14592141428a0a338e6979e73bfe144496c3c211cb9"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.14-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d0462c00f6be30fef66660b60fcd338d3fb79bd730b03aa1e66584de1175424"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
