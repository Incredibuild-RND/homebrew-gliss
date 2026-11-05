# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss-preprod.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class GlissPreprod < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server (preprod channel)"
  homepage "https://glissando.dev"
  version "0.1.7"
  license :cannot_represent

  conflicts_with "gliss", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.7/gliss_0.1.7_darwin_arm64.tar.gz"
      sha256 "95348fa5333e1f9a1abf22d7b90ddeb8d6ce992afe2a981ee05c5874af0e4aa4"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.7/gliss_0.1.7_darwin_amd64.tar.gz"
      sha256 "66e31e9397486ebdaf42cf420b19ed8d3066a8bedbaf0c228d17cb2d23cc48c2"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.7/gliss_0.1.7_linux_arm64.tar.gz"
      sha256 "c3cbdda25ce22aac4dce902529ac0e67691b0559ca51ee500dd375eea21ca2c4"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.7/gliss_0.1.7_linux_amd64.tar.gz"
      sha256 "014e973370538646d788d6b4dfa35223f19e243cdcfb45a1bc1b588444f07b4d"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
