# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.5"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.5/gliss_0.1.5_darwin_arm64.tar.gz"
      sha256 "753eddb83eed2fedd4b928649639f1b1effbaa9dad715664528b20782b03e5f9"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.5/gliss_0.1.5_darwin_amd64.tar.gz"
      sha256 "f43468568299827efae76af00b702a7aff8c930c5e9e33ed9e4f35116b49d0d3"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.5/gliss_0.1.5_linux_arm64.tar.gz"
      sha256 "b8f0da1f8ee131ab44844794be3c4dd9bbfe244e9c88d692673759f481d82311"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.5/gliss_0.1.5_linux_amd64.tar.gz"
      sha256 "59b9838ff98d7d9ac108cbb97d216aae711ad6087a47287b4d2dfb44fd892a34"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
