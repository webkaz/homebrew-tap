cask "superset-intel" do
  version "2.0.2"
  sha256 "3e438586164ca5d85881f15de04dfe6b6f87dfc9888f79219cefb9957db27bef"

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
