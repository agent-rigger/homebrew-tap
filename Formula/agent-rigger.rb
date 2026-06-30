# typed: false
# frozen_string_literal: true

# Homebrew formula for agent-rigger.
#
# GENERATED from this template by packaging/homebrew/render-formula.sh at release
# time (it fills the version and the per-platform checksums from the release's
# SHA256SUMS.txt). Do not edit the rendered Formula/agent-rigger.rb by hand —
# change this template instead.
class AgentRigger < Formula
  desc "Package manager for AI coding assistant harness config"
  homepage "https://github.com/agent-rigger/agent-rigger"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-arm64"
      sha256 "4a22ef2f42640c16f3199690d2488a038a5ea9f92c7dc79092057cfab828297d"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-x64"
      sha256 "e3927e68048a3f281080f6d94546946bb127ba06aae4c19b695bf31fa11c60c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-arm64"
      sha256 "68af86eec09c869eb583b058f2d49c4112b65f5f10221f1f150299973f129324"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-x64"
      sha256 "2fedac41018be873f3497d961d2832107717c5689231436005ddd94d1436ce7b"
    end
  end

  def install
    # Each platform downloads exactly one bare binary named agent-rigger-<os>-<arch>.
    # Install it under the canonical name and expose the short `rigger` alias.
    bin.install Dir["agent-rigger-*"].first => "agent-rigger"
    bin.install_symlink "agent-rigger" => "rigger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-rigger --version")
  end
end
