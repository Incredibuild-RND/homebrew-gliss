# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss-preprod.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class GlissPreprod < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server (preprod channel)"
  homepage "https://glissando.dev"
  version "0.1.8"
  license :cannot_represent

  conflicts_with "gliss", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.8/gliss_0.1.8_darwin_arm64.tar.gz"
      sha256 "217d6fc5e02b2367c6438ad114d33090803290d1aa7916a965681e7e99970f83"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.8/gliss_0.1.8_darwin_amd64.tar.gz"
      sha256 "3ed3cfe7978e1521fb8c7edda234e4afd19bf70af8a15f43cf36f5d2fbd74a66"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.8/gliss_0.1.8_linux_arm64.tar.gz"
      sha256 "fcc4de8b232573ec576a75d6be484e007b8635bee56c617ffa6e833448dbfec3"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.8/gliss_0.1.8_linux_amd64.tar.gz"
      sha256 "bd826c3c0c9ea6f572a13fbe0e0ec3289e3984f5b5a029d4db012570187710b1"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
