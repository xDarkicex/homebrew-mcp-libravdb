class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-arm64"
      sha256 "fb773eb37ba489bbbb013c15c7b253f4ded8a95a70cca8e7f212ad8677f62d96"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-amd64"
      sha256 "ab00e13a1884788105bf3a370ada64aeb306cc326e76f32bc082a2aa58908451"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-arm64"
      sha256 "4f5b6efbb15235b4c3c07240ffc9531942634eb23ac8a1713cde9a67f7f99807"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-amd64"
      sha256 "ae10eb8745b266dfc246b51aed4b91f638501968fa14e20d6a29a90cd39e2266"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
