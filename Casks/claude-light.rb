# TEMPLATE — do not hand-bump; version/sha256 below are placeholders.
# On every release, release.yml renders this file with the real values
# (scripts/render-cask.sh) and pushes it to the tap repo
# fr1j0/homebrew-claude-light — which is what `brew install` reads.

cask "claude-light" do
  version "0.11.0"
  sha256 "41ff0871ef2df9ed1bb514d673107d3184ffa55d0adc752d2eef94a1f30945d5"

  url "https://github.com/fr1j0/claude-light/releases/download/v#{version}/claude-light.zip"
  name "Claude Light"
  desc "Menu-bar status light for Claude Code sessions"
  homepage "https://github.com/fr1j0/claude-light"

  depends_on macos: :ventura

  app "Claude Light.app"

  caveats <<~EOS
    Launch Claude Light, then use "Install Claude Code hooks" from the menu
    to wire it into ~/.claude/settings.json.

    Current releases are unsigned interim builds (Apple notarization pending),
    so Gatekeeper may report the app as "damaged and can't be opened".
    Clear the quarantine flag and launch again:
      xattr -dr com.apple.quarantine "#{appdir}/Claude Light.app"
  EOS
end
