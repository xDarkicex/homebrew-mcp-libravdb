class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-arm64"
      sha256 "17d7080aab8982959205a3df2c5fadbec040482b13b69c9f643f407e3435426f"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-amd64"
      sha256 "8db7bd3670dee98a398bca926a5e23b19238b4c9063b83d483d49f8a8f48723d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-arm64"
      sha256 "c5f6651cdada57a6700690adb9c97dbbcda15be456ebfd130cc695b103d4d70c"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-amd64"
      sha256 "29f11e343febe2c6003111cae39e57d6bebfa6db6c486d3fc7b69c2047ce146e"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
