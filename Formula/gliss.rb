# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.6"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.6/gliss_0.1.6_darwin_arm64.tar.gz"
      sha256 "5f2c6e8b1c581ef8b064f36875535cdc20ea02ec9d46dfcec393680edf8821f1"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.6/gliss_0.1.6_darwin_amd64.tar.gz"
      sha256 "7cf9cd7ba81a23f576eea5cb72a62f3d25ce6adb2eaa7690ece78162642ae1e0"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.6/gliss_0.1.6_linux_arm64.tar.gz"
      sha256 "2a409b00db0c1eb4b8cf01a46ca4857aa9d2dfa81884314d72fbe6a9c1dd774d"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.6/gliss_0.1.6_linux_amd64.tar.gz"
      sha256 "d8d0e3426f7b9f6452641bbf6be169eff2c8891c1020a46932f80458e8842038"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
