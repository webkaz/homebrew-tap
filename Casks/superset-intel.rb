cask "superset-intel" do
  version "1.12.3"
  sha256 "f46a4029c46bbea452ed7b0f1508fc20908bb51d806aee1f7b591a43b55448d9"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-x64.dmg"
  name "Superset (Intel)"
  desc "Terminal for orchestrating agents (x64 build for Intel Mac)"
  homepage "https://superset.sh/"

  auto_updates false

  app "Superset.app"

  postflight do
    # 署名なしビルドの隔離属性を除去
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Superset.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
