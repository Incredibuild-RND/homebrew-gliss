# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss-preprod.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class GlissPreprod < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server (preprod channel)"
  homepage "https://glissando.dev"
  version "0.1.10"
  license :cannot_represent

  conflicts_with "gliss", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.10/gliss_0.1.10_darwin_arm64.tar.gz"
      sha256 "cf0b66a9462d155d05b594b36a4ed283e8b970e8eccba1d0902d37936018ba18"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.10/gliss_0.1.10_darwin_amd64.tar.gz"
      sha256 "7afb73d8d94199787d4bbf0a239c937c7174da5ca2dccb9355138765a90cee0b"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/preprod/cli/0.1.10/gliss_0.1.10_linux_arm64.tar.gz"
      sha256 "9165c1c88477d06f500dc2e1eeea0f7177197920e82e966964beae9afc1e7963"
    end
    on_intel do
      url "https://get.glissando.dev/preprod/cli/0.1.10/gliss_0.1.10_linux_amd64.tar.gz"
      sha256 "f07a282fef759558a023123c8147437699877fb1536532c4e34043e074981632"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
