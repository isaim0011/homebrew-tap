class Blastcode < Formula
  desc "Incremental code-graph MCP server and blast-radius engine for AI coding agents"
  homepage "https://github.com/isaim0011/blastcode"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.1.0/blast-macos-arm64.tar.gz"
      sha256 "39b49e0feef1ceb371f33e451967072d00d4b0d7d73c28676f9cff4329cb0c81"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.1.0/blast-linux-x86_64.tar.gz"
      sha256 "da01a535e26af814a8a256489642978b743b91dbf42a5c3a119debaea48d5ceb"
    end
  end

  def install
    bin.install "blast"
  end

  test do
    system "#{bin}/blast", "--version"
  end
end
