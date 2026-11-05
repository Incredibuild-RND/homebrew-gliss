# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.7"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.7/gliss_0.1.7_darwin_arm64.tar.gz"
      sha256 "6dd17dff59e31d3431ddb6d95f360d75af28d67c234634dfdfb636e5ba8191a7"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.7/gliss_0.1.7_darwin_amd64.tar.gz"
      sha256 "b06b29178b5257ae7ad6365b31bc17ab00bdc567c5e0f5bab975edc56097ded1"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.7/gliss_0.1.7_linux_arm64.tar.gz"
      sha256 "e3eb1d43882f553f3722486c52abd6514352b9dae26bb668610299b49a96b91f"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.7/gliss_0.1.7_linux_amd64.tar.gz"
      sha256 "d641bb0565b646e84a336b4112ead6e429c4272706245dc14128dafa45b709be"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
