class WshmPro < Formula
  desc "AI-powered repository agent — PR corrections, changelogs, reports"
  homepage "https://wshm.dev"
  url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.16-pro/wshm-pro-x86_64-unknown-linux-gnu.tar.gz"
  version "0.31.16-pro"
  sha256 "a32fa01516e28d5c50bdd3b9854a0ff63bcf28fa976efd46266b98cd96c562b9"
  license "LicenseRef-Proprietary"

  # wshm-pro ships prebuilt binaries for Linux only. A stable url must exist for
  # the formula to load on every platform; depends_on :linux then makes brew
  # refuse installation on macOS with a clear "Linux is required" message instead
  # of a cryptic "formula requires at least a URL" load error. The requirement is
  # enforced before any download, so this Linux tarball is never fetched on macOS.
  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/wshm-dev/homebrew-tap/releases/download/v0.31.16-pro/wshm-pro-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcf7099fef60937bb9d06c9442fdf68715f106291f5a9ad4fd021001879a34c0"
    end
  end

  def install
    bin.install "wshm-pro"
  end

  test do
    assert_match "wshm-pro", shell_output("#{bin}/wshm-pro --version")
  end
end
