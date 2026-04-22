class Wshm < Formula
  desc "AI-powered repository agent for GitHub, GitLab, Gitea, Azure DevOps"
  homepage "https://wshm.dev"
  version "0.28.0"
  license "SSPL-1.0"

  on_macos do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.0/wshm-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.0/wshm-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.0/wshm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/wshm-dev/wshm/releases/download/v0.28.0/wshm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "wshm"
  end

  test do
    assert_match "wshm", shell_output("#{bin}/wshm --version")
  end
end