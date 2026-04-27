class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.28.2"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.2/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ed581025c553e10b85e6eb51f47147e63968f748b84cbb9700d6c9c584c9b07"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.2/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cd2ff5f8c57c699f3d8cc7247abdb01b8f9fa50882f39e78f855583a7cdd476"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
