# typed: false
# frozen_string_literal: true

class Gossm < Formula
  desc "gossm is interactive CLI tool that you select server in AWS and then could connect or send files your AWS server using start-session, ssh, scp under AWS Systems Manger."
  homepage "https://github.com/glieske/gossm"
  version "1.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glieske/gossm/releases/download/v1.6.2/gossm_1.6.2_darwin_arm64.tar.gz"
      sha256 "fecec7533ba0e761c51e1ab22e068096f9183b27393949986b371f076da8f66d"

      def install
        bin.install "gossm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/glieske/gossm/releases/download/v1.6.2/gossm_1.6.2_darwin_amd64.tar.gz"
      sha256 "82b1a55ef921232f27436f9cfced4711e3947e48a0bb0b9782080a4db169cb4e"

      def install
        bin.install "gossm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/glieske/gossm/releases/download/v1.6.2/gossm_1.6.2_linux_arm64.tar.gz"
      sha256 "919deee15f9ea2e0e680b59a250a40695a3f51eaa8901d2e071d5d05381473a5"

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
