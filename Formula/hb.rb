class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.1/hb_v1.1.1_darwin_arm64.tar.gz"
      sha256 "cfb48bf68476009f4d8c34f2388e57da2aa129f705169df80d5629f8b68f800c"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.1/hb_v1.1.1_darwin_amd64.tar.gz"
      sha256 "293dfb642785595f4b974de3bf2670ddb6b248b53ea832995937d0da66bc7e95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.1/hb_v1.1.1_linux_arm64.tar.gz"
      sha256 "b60b1495433d888d0e9a463f9ea6a0b9a2c9e38fcf404873f5abefbb56c8d35c"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.1.1/hb_v1.1.1_linux_amd64.tar.gz"
      sha256 "d830f7a5a629128e018474f97818f2863045f27c0a73b1846745bf4d233b12f6"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
