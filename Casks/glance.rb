cask "glance" do
  version "1.1.4"
  sha256 "6c829465048449267a214f8be87a82fb904ed03798b1e464eb8d28bc3806ae2b"

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
