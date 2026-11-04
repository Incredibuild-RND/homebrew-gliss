# The Homebrew formula for the tap Incredibuild-RND/homebrew-gliss (Formula/gliss-preprod.rb), rendered for one release
# by scripts/render-packages.sh from that release's signed SHA256SUMS (docs/distribution.md). Do not edit the rendered
# file in the tap by hand. gliss is the prod channel; gliss-preprod is the preprod one (internal testers).
class GlissPreprod < Formula
  desc "Gliss builder client: sign in, release, status, diagnose and the MCP server (preprod channel)"
  homepage "https://glissando.dev"
  version "0.1.5"
  license :cannot_represent

  conflicts_with "gliss", because: "both install the gliss command"

  on_macos do
    on_arm do
      url "https://gliss-releases-569486438045.s3.eu-central-1.amazonaws.com/cli/0.1.5/gliss_0.1.5_darwin_arm64.tar.gz"
      sha256 "eff8acab32372ca9f611d0387f0b5a815d1c1abfe49f29a3ce4018a57a3c5e56"
    end
    on_intel do
      url "https://gliss-releases-569486438045.s3.eu-central-1.amazonaws.com/cli/0.1.5/gliss_0.1.5_darwin_amd64.tar.gz"
      sha256 "7d56d9ec4a426202f083bee756944afe182b5ca4746f0b5363864ec4eaf5fca9"
    end
  end

  on_linux do
    on_arm do
      url "https://gliss-releases-569486438045.s3.eu-central-1.amazonaws.com/cli/0.1.5/gliss_0.1.5_linux_arm64.tar.gz"
      sha256 "2746cfa3c05e11c4c07ff74134ab879a324897bc8f2b6639a39a63edfae5b346"
    end
    on_intel do
      url "https://gliss-releases-569486438045.s3.eu-central-1.amazonaws.com/cli/0.1.5/gliss_0.1.5_linux_amd64.tar.gz"
      sha256 "6997ef71ddee67daf08cec6420cb668f5232df18c9f5fc1db4650b231ab1a10d"
    end
  end

  def install
    bin.install "gliss"
  end

  test do
    assert_equal "gliss #{version}", shell_output("#{bin}/gliss version").lines.first.strip
  end
end
