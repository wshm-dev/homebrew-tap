class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.16-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.16-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a32fa01516e28d5c50bdd3b9854a0ff63bcf28fa976efd46266b98cd96c562b9"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.16-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcf7099fef60937bb9d06c9442fdf68715f106291f5a9ad4fd021001879a34c0"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
