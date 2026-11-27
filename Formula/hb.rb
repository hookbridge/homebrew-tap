class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.2.0/hb_v1.2.0_darwin_arm64.tar.gz"
      sha256 "f0c3140c87f2afb327a74b7675cab2a8b296e3acf20131ac866cc92f37b5a25c"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.2.0/hb_v1.2.0_darwin_amd64.tar.gz"
      sha256 "d374fd001e4a59d0c89320a8fc825c9c05a0d204477da1d7a14ccd0bfd97b922"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.2.0/hb_v1.2.0_linux_arm64.tar.gz"
      sha256 "4c6bfa1b663578b1f6d3f5a2b7bf5fb668d2a1e97f3600be64df0f3243b536e7"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.2.0/hb_v1.2.0_linux_amd64.tar.gz"
      sha256 "f2e2a001aba28d0eeb593d4e436242c6b402dc56b7cc55a46ca44bc23f242dd7"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
