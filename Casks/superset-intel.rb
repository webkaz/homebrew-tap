cask "superset-intel" do
  version "2.0.6"
  sha256 "ba92dd9c9d6f4548eb610b61f89b1aec3233e326ca675c805c56a2b909b79617"

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
