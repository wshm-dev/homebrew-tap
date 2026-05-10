class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.7-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.7-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "255f2e7ff1c5025f28c1902e86fd42b3d0c5fc898425fb4a76b24dc7388fa1cb"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.7-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43d80fc01881ed1e304b2c5277eac6765e9e31119700e3794591a96aa9d960a5"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
