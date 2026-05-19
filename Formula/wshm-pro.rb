class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.15-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.15-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b210fbdb8f8bd8439f43958e7976278fb6e51bd6eec65f57b66dec64141ab9e4"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.15-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7054f2bf126f4fd273efe95899a1722dd2522d74a6c451caf5c3ad18079270f"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
