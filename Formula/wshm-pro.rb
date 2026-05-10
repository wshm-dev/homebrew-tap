class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.8-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.8-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8631347fae1d2461f020b93efe3ccd0adbbf04fa9a92571aaae9dd90ac4ed02c"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.8-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc8e933074bd60ffb9ec7a3da63b50c005d7b22f471211744a24b7a936ec3041"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
