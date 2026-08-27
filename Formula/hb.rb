class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.2/hb_v1.1.2_darwin_arm64.tar.gz"
      sha256 "a4168c55fb4f8d3b3730bc4900bbbdb0d7971affa753582df4fd708d95ab4a88"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.2/hb_v1.1.2_darwin_amd64.tar.gz"
      sha256 "10e513ddcaaeeaff607a12b4a6249f8633993ec63a49a7476fc011fccf5ffeef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.2/hb_v1.1.2_linux_arm64.tar.gz"
      sha256 "2aab5222ac6b5b805b0871036c7e2d7c6b171dd500a3e8910e00fa8bec5fcc06"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.2/hb_v1.1.2_linux_amd64.tar.gz"
      sha256 "2df4dacf3d05dcb66cb48aabd8f78f0258214e872cad63b79e467f1a40de9e20"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
