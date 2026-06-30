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
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-arm64"
      sha256 "b640ed0717b38ec2380ad5e3a286785439656ef2614db20bbd7421bb2a98a964"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-darwin-x64"
      sha256 "6db0631e576efe4aad72de9162c7a9eb71fc68b4ed85d4ac36a37125ea73511c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-arm64"
      sha256 "44b89b96c163f446ab558d543173d17bd0d4bd47710196789e75b545265756fa"
    end
    on_intel do
      url "https://github.com/agent-rigger/agent-rigger/releases/download/v#{version}/agent-rigger-linux-x64"
      sha256 "c911ccdd978d3a0c3c3515fe012c7c5dd37f6783b096123b518d385bbfcd7368"
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
