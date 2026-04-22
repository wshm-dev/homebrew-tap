class WshmPro < Formula
  desc "wshm Pro — AI-powered repository agent (Pro edition)"
  homepage "https://wshm.dev"
  version "0.27.0"
  license "SSPL-1.0"

  on_macos do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.27.0/wshm-pro-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.27.0/wshm-pro-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.27.0/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1fa602ec38b1e3fa68266dc7272d295710522dc716999b45ca7077236c70d1e"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end