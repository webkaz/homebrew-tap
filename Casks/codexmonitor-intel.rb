cask "codexmonitor-intel" do
  version "0.7.67"
  sha256 "35f30cebef00fe856958b5e45e9e6c76641e835d0b2254cedc07fdae60db2341"

  url "https://github.com/webkaz/codexmonitor-intel-builds/releases/download/v#{version}-intel/CodexMonitor-macos-intel.dmg"
  name "Codex Monitor (Intel)"
  desc "Codex Monitor for Intel Mac (x86_64 unsigned build)"
  homepage "https://github.com/webkaz/codexmonitor-intel-builds"

  # 署名なしビルドのため自動更新は無効
  auto_updates false

  app "Codex Monitor.app"

  postflight do
    # 署名なしビルドの隔離属性を除去
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Codex Monitor.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.dimillian.codexmonitor",
    "~/Library/Caches/com.dimillian.codexmonitor",
    "~/Library/Preferences/com.dimillian.codexmonitor.plist",
    "~/Library/Saved Application State/com.dimillian.codexmonitor.savedState",
  ]
end
