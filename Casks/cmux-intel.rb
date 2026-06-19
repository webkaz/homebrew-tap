cask "cmux-intel" do
  version "0.64.16"
  sha256 "c5333496d46e5de755279d4d3e5fe6452fe81d4744dba659ba8f4d939cfaf6b3"

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
