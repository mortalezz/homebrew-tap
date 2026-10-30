cask "glance" do
  version "1.1.0"
  sha256 "ec9c0af309670649c94d4fc02a635d221b9ef2b14de6e7741a4725c456a34e59"

  url "https://github.com/mortalezz/glance/releases/download/v#{version}/Glance-v#{version}-macOS.zip"
  name "Glance"
  desc "Ultra-fast image viewer and pro culling tool"
  homepage "https://github.com/mortalezz/glance"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Glance.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Glance.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.glance.mac.plist",
    "~/Library/Saved Application State/com.glance.mac.savedState",
  ]
end
