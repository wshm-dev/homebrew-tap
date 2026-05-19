class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.4"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.4/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "758860f4dbdb634d2a76738ad35726f82da97c616a9345b5382286e6369f76de"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.4/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "450ca98f0b0d720eabd893330a866f636d586a206b9395a34fef09b265357afd"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
