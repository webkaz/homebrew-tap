cask "cmux-intel" do
  version "0.64.22"
  sha256 "8fc669e5a4c46512e2eb45c2201b261a8305cf1ce14ee830028611c2ad8308b9"

  url "https://github.com/webkaz/cmux-intel-builds/releases/download/v#{version}-intel/cmux-macos-intel.dmg"
  name "cmux (Intel)"
  desc "Terminal with vertical tabs for AI coding agents"
  homepage "https://github.com/webkaz/cmux-intel-builds"

  disable! date: "2026-08-06", because: "the official universal build is available from manaflow-ai/cmux"

  # 署名なしビルドのため Gatekeeper 隔離を無効化
  auto_updates false
  depends_on :macos

  app "cmux.app"

  postflight do
    # 署名なしビルドの隔離属性を除去
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/cmux.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/com.manaflow.cmux.plist",
  ]
end
