# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.11"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.11/gliss_0.1.11_darwin_arm64.tar.gz"
      sha256 "b23e3442c4a60b73c4d68293bbb2ebbfeb16edc8b982b12f0b8b3f6351d7b328"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.11/gliss_0.1.11_darwin_amd64.tar.gz"
      sha256 "528c442386025578822b695fb383b47fed572df70c66600ce9e3888dd7c98954"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.11/gliss_0.1.11_linux_arm64.tar.gz"
      sha256 "aba108957c7e7ee916f40e6a716b20f6fe9536c76e33d576f6c2953f520d4f6b"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.11/gliss_0.1.11_linux_amd64.tar.gz"
      sha256 "380b671e7621d9537b04b4da19f1e2ee91eefbce16cf299232535438ee3bc02a"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
