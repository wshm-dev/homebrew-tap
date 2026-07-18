class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  version "0.31.7"
  license "SSPL-1.0"

  on_macos do
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.7/wshm-aarch64-apple-darwin.tar.gz"
      sha256 "3f621b957a24a73ae45ef68e3cef98cb9cc06f538e0e4b92ff47c637b3c99a1d"
    end
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.7/wshm-x86_64-apple-darwin.tar.gz"
      sha256 "076aaad71d38fd8ab953a220934c74b27b0578cebed59b2efe49b66edf614afa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.7/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79c9e172f3a02935365d300f3c0a9d3b778a5c9eed5806b98186fc394f7fd463"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.31.7/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef00f8eb04a41cc2a2468afd28a95152947c48cd55d4636af0ee881f076a9dfa"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wshm --version")
  end
end
