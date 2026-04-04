# Homebrew Tap

> [English](README.md)

[cmux](https://github.com/manaflow-ai/cmux) Intel Mac ビルドの Homebrew Tap。

## インストール

```sh
brew install webkaz/tap/cmux-intel
```

## 更新

```sh
brew upgrade --cask cmux-intel
```

## Cask 一覧

| Cask | 説明 |
|------|------|
| `cmux-intel` | cmux Intel Mac (x86_64) 署名なしビルド |

## 自動更新

本リポジトリの CI が [cmux-intel-builds](https://github.com/webkaz/cmux-intel-builds) の最新リリースを6時間ごと（ビルド CI の1時間後）にチェックし、Cask 定義を自動更新する。
