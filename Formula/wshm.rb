class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.3"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.3/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2991d83e2d4894a52a79e3050b5de9ab9ee2b1c657ffd918076d1b4e60c9606"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.3/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "221de1d7ab12ba5137adaab5f5370d45ef7ff24c34dec5b7abbea0088ed64fc4"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
