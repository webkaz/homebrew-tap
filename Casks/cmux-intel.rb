cask "cmux-intel" do
  version "0.64.17"
  sha256 "903d11fabe6ffd7793ad4fd7aa80b18442d1e9ec7604c0e16173b7542068f20d"

  url "https://github.com/webkaz/cmux-intel-builds/releases/download/v#{version}-intel/cmux-macos-intel.dmg"
  name "cmux (Intel)"
  desc "cmux for Intel Mac (x86_64 unsigned build)"
  homepage "https://github.com/webkaz/cmux-intel-builds"

  # 署名なしビルドのため Gatekeeper 隔離を無効化
  auto_updates false

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
