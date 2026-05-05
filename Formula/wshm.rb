class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.29.0"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.29.0/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f3fc013b5710637b117060bb15ae855fc0c136392066d2238741e59db137f60"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.29.0/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ce7f46d833f07a0d62ef7dabad32b432e11f1a18f9884efc2919472e8661ce8"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
