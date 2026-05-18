class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  version "0.31.12-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.12-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d475959bc53ee690ec0813bb359a3799a9efdc89dce45a6aa22ee79073b0e7c8"
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.12-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95e3aba223c9640d01096c5feba7d2ea61e7e5ddd2eaa0c126845b50ce1b5230"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
