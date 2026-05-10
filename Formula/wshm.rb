class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.2"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.2/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd58640cd07d64243ded5ac3aaf54336810f08eb6334f328844945a409e94222"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.2/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb53a9dfc5fb5ec7b2f8a887a84a65835a36c500b66736d4f8c4647ec7869307"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
