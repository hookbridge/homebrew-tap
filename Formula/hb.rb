class Hb < Formula
  desc "CLI tool for receiving webhooks locally during development"
  homepage "https://github.com/hookbridge/hookbridge-cli"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.0.2/hb_v1.0.2_darwin_arm64.tar.gz"
      sha256 "3b258e0b8cd4c856a4b7ba17673575232b6dd71ae94006bb7a717dddfc5faf9d"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.0.2/hb_v1.0.2_darwin_amd64.tar.gz"
      sha256 "41b8a1b3317713f8e46311845fdbaeebb165f10d1dfb33ef66ca613f9aefd397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.0.2/hb_v1.0.2_linux_arm64.tar.gz"
      sha256 "5cb904511c4374ce0ac0d3e4aa9ed93731647e636ca4e320c903b5cd25ae1ca8"
    end

    on_intel do
      url "https://github.com/hookbridge/hookbridge-cli/releases/download/v1.0.2/hb_v1.0.2_linux_amd64.tar.gz"
      sha256 "00d8504ad20cfbad3c67c8df6bcba9116b0c24b902e682217bd92f3accdc95c2"
    end
  end

  def install
    bin.install "hb"
  end

  test do
    assert_match "hb version v#{version}", shell_output("#{bin}/hb version")
  end
end
