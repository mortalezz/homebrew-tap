cask "glance" do
  version "1.1.4"
  sha256 "321e1c7cd1690e1533838ad5f79cf9a1fd6fac020966c9c1b528e11436a719a1"

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
