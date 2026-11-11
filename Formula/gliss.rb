# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.8"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.8/gliss_0.1.8_darwin_arm64.tar.gz"
      sha256 "6b6364f86e46101845c7ef62294f0c7cd585833fc9c688471b04e3f3811bda57"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.8/gliss_0.1.8_darwin_amd64.tar.gz"
      sha256 "fa200139c95f5360e835398a238807e1fcdc9f98f2f13ae075d6d3ae2c862fd1"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.8/gliss_0.1.8_linux_arm64.tar.gz"
      sha256 "a606b0ce5735633604fef99224f9a988e94341150b6727720c4dac3f0454381d"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.8/gliss_0.1.8_linux_amd64.tar.gz"
      sha256 "62cfc6ebef650ba178cf373450aa396c36c270a531484c7d17d9ced771407de9"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
