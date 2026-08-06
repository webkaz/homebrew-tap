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
| `cmux-intel` | **配布終了。** 公式Universal Buildへ移行 | [manaflow-ai/cmux](https://github.com/manaflow-ai/cmux) |
| `codexmonitor-intel` | Codex Monitor Intel Mac (x86_64) 署名なしビルド | [Dimillian/CodexMonitor](https://github.com/Dimillian/CodexMonitor) |
| `superset-intel` | Superset Intel Mac (x86_64) — 公式 x64 DMG を Cask として配布 | [superset-sh/superset](https://github.com/superset-sh/superset) |

## 自動更新

各 Intel ビルドリポジトリの最新リリースを6時間ごと（ビルド CI からオフセット）にチェックし、対応する Cask 定義を自動更新する CI ワークフローが個別に動作。

> **Note:** `superset-intel` は公式 x64 DMG を直接利用するため、手動更新。

## cmux-intelからの移行

cmux公式版がIntel MacとApple Silicon Macの両方に対応しました。cmuxを終了してから、
署名・notarize済みの公式Homebrew caskへ移行してください。

```sh
brew uninstall --cask cmux-intel
brew tap manaflow-ai/cmux
brew install --cask cmux
```

既存の設定やアプリケーションデータを残す場合、アンインストール時に `--zap` を付けないでください。
`cmux-intel` の更新workflowは履歴として残しますが、無効化します。
