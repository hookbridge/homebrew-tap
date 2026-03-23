class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v#{version}/hb_v#{version}_darwin_arm64.tar.gz"
      sha256 "dac47801dfeb463f2c97ee132c503cf08d3103eab95308591c9d1b78f6b69217"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v#{version}/hb_v#{version}_darwin_amd64.tar.gz"
      sha256 "92f780e21d56bf988ad1ba98d69355369850b8e1a5fdbae56244760e78b70e01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v#{version}/hb_v#{version}_linux_arm64.tar.gz"
      sha256 "79d15c477e52a89c6217d27eab6fce2e61148df635dd1e96ef8ec4576ea055ac"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v#{version}/hb_v#{version}_linux_amd64.tar.gz"
      sha256 "2debeb9c8aa7fd787b0d66ee10b16f39881636d40fe22508a959682441ce2943"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
