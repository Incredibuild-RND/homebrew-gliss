# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss-preprod.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class GlissPreprod < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server (preprod channel)"
  homepage "https://glissando.dev"
  version "0.1.6"
  license :cannot_represent

  conflicts_with "gliss", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.6/gliss_0.1.6_darwin_arm64.tar.gz"
      sha256 "cf4149a07da845a916c6828949ae91c222f7adc58086067a5120c94d18e98751"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.6/gliss_0.1.6_darwin_amd64.tar.gz"
      sha256 "d108fccd2acc29190d139e8a7542867623706e2293aed42b99ca53edf351b836"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.6/gliss_0.1.6_linux_arm64.tar.gz"
      sha256 "5007ca3ea21e384e86f54c9de1a4e729acc9d9cdbd27a1c1941d1264a8555d71"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.6/gliss_0.1.6_linux_amd64.tar.gz"
      sha256 "0934760bd01d6084c899ef04cbe287004c5648356e407e656e0ac788265fc489"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
