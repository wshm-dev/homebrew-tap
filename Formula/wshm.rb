class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.28.4"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.4/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77f49c7d1ea46f5dee86c68a0f0b3e16fb152bac14156756acfdc42fd572bf16"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.4/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "893d5258c5b4b1c3572a4f98fe2133a016fcec5ca8660694998f6651396d69b7"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
