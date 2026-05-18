class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.10-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.10-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d7b4bff2466aa27b1b397b6b5ed749498cf4068f5d223a38fdb348a9a23fc6f"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.10-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98ed14f8347753e28ffa16b416a3e28fc7ced1f4feabd3a75f034c1ddfce53c4"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
