class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.28.3"
  license "SSPL-1.0"

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.3/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc2c619904cabe266a3ca3d05b8287d312e8e82c106ffbdf6b8fde843ed5f655"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.3/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26499c8e504c8977a33467327b86ddb42b319ba59fcde9f547f4850e92720252"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
