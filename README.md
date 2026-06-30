# homebrew-claude-light

Homebrew tap for [Claude Light](https://github.com/fr1j0/claude-light) — a native macOS menu-bar status light for your Claude Code sessions (🔴 needs input · 🟠 running · 🟢 idle/finished).

## Install

```sh
brew tap fr1j0/claude-light
brew install --cask claude-light
```

Then launch Claude Light and choose **Install Claude Code hooks** from the menu (or accept the first-run prompt) to wire it into `~/.claude/settings.json`.

> **Note:** This tap is published, but the cask is pending the first tagged release of Claude Light. Until `v0.1.0` is released (notarized `.app` + checksum), `brew install --cask claude-light` will not resolve. The `sha256` in `Casks/claude-light.rb` is a placeholder that gets filled from the release's `claude-light.zip.sha256` on each version bump.

## Updating the cask per release

On each release of `fr1j0/claude-light`:

1. Bump `version` in `Casks/claude-light.rb`.
2. Replace `sha256` with the value from that release's `claude-light.zip.sha256`.
3. Commit and push.
