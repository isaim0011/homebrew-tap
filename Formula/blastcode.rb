class Blastcode < Formula
  desc "Incremental code-graph MCP server and blast-radius engine for AI coding agents"
  homepage "https://github.com/isaim0011/blastcode"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.3.0/blast-macos-arm64.tar.gz"
      sha256 "c2a69277762a152be643a84be1897985456e7839ff1b1f893d50c735cc5e74ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.3.0/blast-linux-x86_64.tar.gz"
      sha256 "7c83b4a319f098ed76a9722690c748b0c50dbc30d465a5be3c57ae5c9e474f10"
    end
  end

  def install
    bin.install "blast"
  end

  test do
    system "#{bin}/blast", "--version"
  end
end
