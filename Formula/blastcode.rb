class Blastcode < Formula
  desc Incremental code-graph MCP server and blast-radius engine for AI coding agents
  homepage https://github.com/isaim0011/blastcode
  version 0.2.1

  on_macos do
    if Hardware::CPU.arm?
      url https://github.com/isaim0011/blastcode/releases/download/v0.2.1/blast-macos-arm64.tar.gz
      sha256 10c7f75ee984983d4c977da12769d7fc9705a82b3f806d132b40339011af4017
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url https://github.com/isaim0011/blastcode/releases/download/v0.2.1/blast-linux-x86_64.tar.gz
      sha256 27d83a6fbddd06cde57335b1e061fd82a20080b2103a1cb3e9a43f41ce7ac2e9
    end
  end

  def install
    bin.install blast
  end

  test do
    system #{bin}/blast, --version
  end
end
