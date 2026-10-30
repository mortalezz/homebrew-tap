# mortalezz Homebrew Tap 🍺

Official Homebrew tap for [@mortalezz](https://github.com/mortalezz) projects.

## Installation

Install **Glance** via Homebrew Cask:

```bash
brew install --cask --no-quarantine mortalezz/tap/glance
```

> **Note:** The `--no-quarantine` flag bypasses macOS Gatekeeper's quarantine attribute on open-source, ad-hoc signed apps. If installed without it, run:
> ```bash
> xattr -cr /Applications/Glance.app
> ```

## Updates

To update Glance when new releases are published:

```bash
brew upgrade --cask glance
```
