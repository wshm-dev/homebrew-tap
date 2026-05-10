class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.9-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.9-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d85c5d99697133ee0606a64ab453b57f0af69694506e4979a859c4be75210ae9"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.9-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd0485fc725bc6d6d0874111b9b8467cfbc94572e29b34160e6066baccd96cf2"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
