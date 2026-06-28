class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-arm64"
      sha256 "e5f9940bcb39b59df2753bac020df2199cc0a7ed7c4f24d2f67074670365f575"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-amd64"
      sha256 "e23828b0cc74483ac302883f806b381de98dafe6c42aa59324d11aeef1b0f877"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-arm64"
      sha256 "744552ad788cab9296a2e1a5f41f63c6594ac3bd8cc135fa7b23a8768d32668b"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-amd64"
      sha256 "ea9bea96c0bf184d251717f61c1a7fb2c3a8514a5c9991d5b69c60beee270cb8"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
