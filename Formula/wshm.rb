class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.0"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.0/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9879e04603d3ff5879098abe5d45d321d3c988409ae18b29a4e22de0bfa4b8b4"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.0/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a4bd1a8213bc799a76d7f44555af202b5cac0890484c59e767217c18cb009be"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
