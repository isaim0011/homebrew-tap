class Blastcode < Formula
  desc "Incremental code-graph MCP server and blast-radius engine for AI coding agents"
  homepage "https://github.com/isaim0011/blastcode"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.3.1/blast-macos-arm64.tar.gz"
      sha256 "dc526be62290ba7df062075e8f02147aacf4e4271e0de2ede076807179cfd03c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isaim0011/blastcode/releases/download/v0.3.1/blast-linux-x86_64.tar.gz"
      sha256 "d42fc935267df74e917580d3492245d32364307992b5ce09671b9a13e22ef5a3"
    end
  end

  def install
    bin.install "blast"
  end

  test do
    system "#{bin}/blast", "--version"
  end
end
