class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-arm64"
      sha256 "e14669bca73f8e52b6c53bfd7aa6082d47da00083a7d1b069055b43b1aacd45a"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-darwin-amd64"
      sha256 "47a0a07a6b19b2c757b08cc8e2a3f0c57e986b4c73b300c167e313c4a1da488d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-arm64"
      sha256 "3e723e978df23d60a5fa5750f5949dd63239d435f22300d849f2858cfbd5efbe"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.0/mcp-memory-libravdb-linux-amd64"
      sha256 "f46fb6dc921c217eb01f88917a218acdf88ba6580f9ba76ff63405aee5ea7d7c"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
