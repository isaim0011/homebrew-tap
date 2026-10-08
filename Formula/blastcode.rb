class Blastcode < Formula
  desc Incremental code-graph MCP server and blast-radius engine for AI coding agents
  homepage https://github.com/isaim0011/blastcode
  version 0.2.0

  on_macos do
    if Hardware::CPU.arm?
      url https://github.com/isaim0011/blastcode/releases/download/v0.2.0/blast-macos-arm64.tar.gz
      sha256 c8b1848c1b8c8bbe681d37f8762113144f80cccdf3220f1b213cac42c7a4ae42
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url https://github.com/isaim0011/blastcode/releases/download/v0.2.0/blast-linux-x86_64.tar.gz
      sha256 37a215f5e727954f2a733d5f2c5dbf514d98f5b67673ee55ab3526d65926da27
    end
  end

  def install
    bin.install blast
  end

  test do
    system #{bin}/blast, --version
  end
end
