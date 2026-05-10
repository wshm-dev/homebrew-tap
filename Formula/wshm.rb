class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.1"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.1/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b697425899db7ddcf9b50adb1cdf999cd791f075d6f3cd9cc36c179b49fba96"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.1/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cda0d522febb93b8d83b70170b662e4afa6b31fba58fffd7cdb31849820c0ae"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
