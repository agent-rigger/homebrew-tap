# homebrew-tap

Homebrew tap for [`agent-rigger`](https://github.com/agent-rigger/agent-rigger) —
a package manager for AI coding assistant harness config.

## Install

```sh
brew tap agent-rigger/tap
brew install agent-rigger      # provides `agent-rigger` and the `rigger` alias
```

## Maintenance

`Formula/agent-rigger.rb` is **auto-generated**. Do not edit it by hand.

On every `v*` release of `agent-rigger`, the
[`Homebrew` workflow](https://github.com/agent-rigger/agent-rigger/blob/main/.github/workflows/homebrew.yml)
renders the formula from
[`packaging/homebrew/agent-rigger.rb.tmpl`](https://github.com/agent-rigger/agent-rigger/blob/main/packaging/homebrew/agent-rigger.rb.tmpl)
with the released version + per-platform checksums and pushes it here.
