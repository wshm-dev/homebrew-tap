class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.28.1"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.1/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70ebfb55974797bef3689700ede3e3be54fca0206b0f27c0b1cde64aaba1d607"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.1/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1bafd3e640d7009ae8b487bfecc067d6bdfd98574a9bf8371c465d3f72f41df"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
