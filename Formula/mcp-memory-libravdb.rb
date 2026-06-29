class McpMemoryLibravdb < Formula
  desc "MCP server for the libravdbd cognitive memory kernel"
  homepage "https://github.com/xDarkicex/mcp-libravdb-server"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-arm64"
      sha256 "b9207c19d51ffe2734dbc2769d279ee1eeb5e7ca2b8cbc756ef53fe6e3773096"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-darwin-amd64"
      sha256 "b7a59c4e0e849464b33f9d4be317f347dbe2080b1eb3c6b3870cc22c5f703a02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-arm64"
      sha256 "f3bd611ce44d436f90e69b184b178debe4fcc3399d3df1fa1ea436b04c5e33a2"
    else
      url "https://github.com/xDarkicex/mcp-libravdb-server/releases/download/v0.1.2/mcp-memory-libravdb-linux-amd64"
      sha256 "bc53b049baadfb3b138c36ccfb72e358bb7da6dde052cec94396df0edef7a938"
    end
  end

  def install
    bin.install Dir["*"].first => "mcp-memory-libravdb"
  end

  test do
    system "#{bin}/mcp-memory-libravdb", "--version"
  end
end
