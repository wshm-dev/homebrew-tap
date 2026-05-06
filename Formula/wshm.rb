class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.30.0"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.30.0/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9683543b11749a01e1f4e5e50e7539bc06d930fa40fde15089ec808188adfc9f"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.30.0/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80d2f48a40c5331e23930dc53c9d18ab71af10b36c1d05c116797bf76f57b420"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
