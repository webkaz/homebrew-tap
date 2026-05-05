cask "cmux-intel" do
  version "0.64.1"
  sha256 "41dec1bf958784beebfef9c31f9f2cddaa864b1662d7fc884c740eee0cea16b2"

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
