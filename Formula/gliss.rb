# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class Gliss < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server"
  homepage "https://glissando.dev"
  version "0.1.12"
  license :cannot_represent

  conflicts_with "gliss-preprod", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.12/gliss_0.1.12_darwin_arm64.tar.gz"
      sha256 "dcc45a8ba8208a59d5e41cf45b9c3069b2e1aae964b6ae72ff32b8fe34bfed51"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.12/gliss_0.1.12_darwin_amd64.tar.gz"
      sha256 "a4e4c89483c9d635bd11503db591f8d803bc6014c37f94c1d421f045fcc21298"
    end
  end

  on_linux do
    on_arm do
      url "https://get.glissando.dev/cli/0.1.12/gliss_0.1.12_linux_arm64.tar.gz"
      sha256 "bec61c66e1b071b9ea7350cee0cfb4b4e97a5b37b9a5db6b63f3e2804a0c9fee"
    end
    on_intel do
      url "https://get.glissando.dev/cli/0.1.12/gliss_0.1.12_linux_amd64.tar.gz"
      sha256 "4a5cbdc8107b73d6d1914c48ef54c420638e49abb92372ea2f96127deef0d541"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
