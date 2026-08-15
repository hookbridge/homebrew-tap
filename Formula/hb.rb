class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.0/hb_v1.1.0_darwin_arm64.tar.gz"
      sha256 "7047e33266f93f1f9e44eeddb801d38dda3c58580ff740b66041563169666461"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.0/hb_v1.1.0_darwin_amd64.tar.gz"
      sha256 "985794b0668053e9bb6794e806675057cb4bb3a4c7e64b9f4a78245101c4c3fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.0/hb_v1.1.0_linux_arm64.tar.gz"
      sha256 "8d27e3d5c8d91c788d7e212d9defdc68a3166b50885b229027b1ab5f7adf9601"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.0/hb_v1.1.0_linux_amd64.tar.gz"
      sha256 "d01bf2a3ff7fbae794238f89f39f3fd1503e18e822d96d29a18a75420c8322ca"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
