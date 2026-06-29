class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.1/mcp-memory-libravdb-darwin-arm64"
      sha256 "8b61760e8be75f8827ca077fb0e33b553ae81fbed68b17525739e6e3e4fd2b81"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.1/mcp-memory-libravdb-darwin-amd64"
      sha256 "e4bf50c2d2ce75d172253ca74b857b08268b8584d8e24b8ec955d2154db110be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.1/mcp-memory-libravdb-linux-arm64"
      sha256 "ca7a4d82fa8500dc0b72a0ec3dc05e08ed69da56943799029cf1d87b3269f2b4"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.1/mcp-memory-libravdb-linux-amd64"
      sha256 "2701de2e150cc0af30e92f5e2d49f0e91495a05c2922d674c1a432e61911592f"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
