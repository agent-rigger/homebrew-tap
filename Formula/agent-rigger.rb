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
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-arm64"
      sha256 "ea8d178741703d39f233bafd4375de8493db1170183a6517076ab2f28534e44e"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-x64"
      sha256 "44fb18d936c4ab4970e2062fa8fa6daec2594de00f93c2d408e93cdf9108ade7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-arm64"
      sha256 "502921a38a8ab7080e8d90fbc78b1f68569bd36a66cac45a3c64084ec01f1134"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-x64"
      sha256 "9c9c61c0b5e3320c832a3bde09c7fc9158f813bf7ac46c2b1721a5d950474e24"
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
