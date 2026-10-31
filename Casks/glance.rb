cask "glance" do
  version "1.2.6"
  sha256 "07160db26959803fa7462b1e7e0a49c43cc00f76006fd976efefd6120e08ef26"

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
