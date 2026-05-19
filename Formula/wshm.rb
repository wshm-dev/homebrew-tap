class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.5"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.5/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e97c2614f97972bc0004a1c8cf5974f2ac1264c4c7a65f0d5d161dab97d9a883"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.5/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1449ad6584dc2e9e5dafbfed0e63c603057d5c1770425c669a3b4b6c45e8168"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
