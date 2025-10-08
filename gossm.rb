# typed: false
# frozen_string_literal: true

class Gossm < Formula
  desc "gossm is interactive CLI tool that you select server in AWS and then could connect or send files your AWS server using start-session, ssh, scp under AWS Systems Manger."
  homepage "https://github.com/glieske/gossm"
  version "1.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glieske/gossm/releases/download/v1.6.9/gossm_1.6.9_darwin_arm64.tar.gz"
      sha256 "54eaa9966beae30a77d2f856dc3a8bd3bb42d9b75a420e6b49ccd1841c24173a"

      def install
        bin.install "gossm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/glieske/gossm/releases/download/v1.6.9/gossm_1.6.9_darwin_amd64.tar.gz"
      sha256 "79ef6cfbfeb795f54726b65dd6d99451f46e12c55c685b4570ea7860f1234686"

      def install
        bin.install "gossm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/glieske/gossm/releases/download/v1.6.9/gossm_1.6.9_linux_arm64.tar.gz"
      sha256 "ec1df0395157ceca1842740f7a2f39a30f6b3e3186525e47454a548dd76924a6"

      def install
        bin.install "gossm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/glieske/gossm/releases/download/v1.6.9/gossm_1.6.9_linux_amd64.tar.gz"
      sha256 "66869f7cdfaae4ff842dd2ff70a607485444684bbfdb58b4720c202f4464cfda"

      def install
        bin.install "gossm"
      end
    end
  end
end
