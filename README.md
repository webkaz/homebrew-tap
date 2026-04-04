# Homebrew Tap

> [日本語版はこちら / Japanese](README.ja.md)

Homebrew Tap for [cmux](https://github.com/manaflow-ai/cmux) Intel Mac builds.

## Install

```sh
brew install webkaz/tap/cmux-intel
```

## Update

```sh
brew upgrade --cask cmux-intel
```

## Available Casks

| Cask | Description |
|------|-------------|
| `cmux-intel` | cmux Intel Mac (x86_64) unsigned build |

## Auto Update

This repo's CI checks [cmux-intel-builds](https://github.com/webkaz/cmux-intel-builds) for new releases every 6 hours (1 hour after the build CI) and auto-updates the Cask definition.
