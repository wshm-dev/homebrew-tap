class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.13-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.13-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4198abbad3b3f1c4f9604eef3f4648f794e14158ef61bae5c15fee867af034c8"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.13-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96013dd15724b68ead207786634d9fbefe5511915f893eebbc4e03cc36cd944a"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
