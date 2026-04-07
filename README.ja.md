# Homebrew Tap

> [English](README.md)

macOS アプリの Intel Mac (x86_64) 署名なしビルドを配布する Homebrew Tap。

## インストール

```sh
brew install webkaz/tap/<cask名>
```

## 更新

```sh
brew upgrade --cask <cask名>
```

## Cask 一覧

| Cask | 説明 | 上流 |
|------|------|------|
| `cmux-intel` | cmux Intel Mac (x86_64) 署名なしビルド | [manaflow-ai/cmux](https://github.com/manaflow-ai/cmux) |
| `codexmonitor-intel` | Codex Monitor Intel Mac (x86_64) 署名なしビルド | [Dimillian/CodexMonitor](https://github.com/Dimillian/CodexMonitor) |
| `superset-intel` | Superset Intel Mac (x86_64) — 公式 x64 DMG を Cask として配布 | [superset-sh/superset](https://github.com/superset-sh/superset) |

## 自動更新

各 Intel ビルドリポジトリの最新リリースを6時間ごと（ビルド CI からオフセット）にチェックし、対応する Cask 定義を自動更新する CI ワークフローが個別に動作。

> **Note:** `superset-intel` は公式 x64 DMG を直接利用するため、手動更新。
