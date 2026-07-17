class Wshm < Formula
  desc "AI-powered GitHub agent — triage, PR analysis, merge queue"
  homepage "https://wshm.dev"
  url "https://github.com/wshm-dev/wshm/releases/download/v0.31.5/wshm-x86_64-unknown-linux-gnu.tar.gz"
  version "0.31.5"
  sha256 "e97c2614f97972bc0004a1c8cf5974f2ac1264c4c7a65f0d5d161dab97d9a883"
  license "SSPL-1.0"

  # wshm ships prebuilt binaries for Linux only. A stable url must exist for the
  # formula to load on every platform; depends_on :linux then makes brew refuse
  # installation on macOS with a clear "Linux is required" message instead of a
  # cryptic "formula requires at least a URL" load error. The requirement is
  # enforced before any download, so this Linux tarball is never fetched on macOS.
  depends_on :linux

  on_linux do
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
