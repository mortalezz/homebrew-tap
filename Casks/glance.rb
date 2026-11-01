cask "glance" do
  version "1.3.1"
  sha256 "180c20b638cd12e58a3e7a2be99528c90a8b0c93d4bb0c77059f3af7e76f7c33"

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

  zap trash: [
    "~/Library/Preferences/com.glance.mac.plist",
    "~/Library/Saved Application State/com.glance.mac.savedState",
  ]
end
