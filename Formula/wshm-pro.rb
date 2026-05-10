class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.5-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.5-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3af5e7d0fb9c8d297bc57f7bf04f131bb5b622e3115970b7644bf4d19df5e5b7"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.5-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eef3f5f705d4833d5b000de79fb661c2378ea2f62ae914b45f74b4cb618e83d1"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
