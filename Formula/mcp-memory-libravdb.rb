class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-arm64"
      sha256 "52219a5e0c4d78a5d774125948b44e04a1e0adffafbb38b3db4807b5dc0b2fff"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-amd64"
      sha256 "dc51d67faf49386f6483366861e49bb28876cf9e7e37436d83f20b2214422393"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-arm64"
      sha256 "f73273a373bb8169e808cad8e1e539eb511df68a9347b2910e106dd1b71398db"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-amd64"
      sha256 "acdcda8e33fd2663210628cfad00051d6e42b05229b3cac08ca307b06e390d34"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
