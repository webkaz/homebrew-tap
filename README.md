# Homebrew Tap

> [日本語版はこちら / Japanese](README.ja.md)

Homebrew Tap for Intel Mac (x86_64) unsigned builds of macOS apps.

## Install

```sh
brew install webkaz/tap/<cask-name>
```

## Update

```sh
brew upgrade --cask <cask-name>
```

## Available Casks

| Cask | Description | Upstream |
|------|-------------|----------|
| `cmux-intel` | cmux Intel Mac (x86_64) unsigned build | [manaflow-ai/cmux](https://github.com/manaflow-ai/cmux) |
| `codexmonitor-intel` | Codex Monitor Intel Mac (x86_64) unsigned build | [Dimillian/CodexMonitor](https://github.com/Dimillian/CodexMonitor) |
| `superset-intel` | Superset Intel Mac (x86_64) — official x64 DMG repackaged as Cask | [superset-sh/superset](https://github.com/superset-sh/superset) |

## Auto Update

Separate CI workflows check each Intel build repo for new releases every 6 hours (offset from the build CI) and auto-update the corresponding Cask definition.

> **Note:** `superset-intel` is updated manually, as it repackages the official x64 DMG directly.
