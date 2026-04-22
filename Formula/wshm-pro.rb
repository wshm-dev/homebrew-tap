class WshmPro < Formula
  desc "AI-powered GitHub agent — Pro edition with code review, auto-fix, changelogs, reports"
  homepage "https://wshm.dev/pro"
  version "0.28.1-pro"
  license "LicenseRef-Proprietary"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.28.1-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62dd53bcc3083ad5955155225eb1fe16bbc28887a13705ab82c913410cf917b1"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
