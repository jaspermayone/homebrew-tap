cask "zipmerge" do
  version "2.0.0"
  sha256 "d9800162f8256a7cf98aa9d3e4369eac4d9e3bceb03ce6893de3fe33223f7288"

  url "https://github.com/jaspermayone/ZipMerge/releases/download/v#{version}/ZipMerge.zip"
  name "ZipMerge"
  desc "Compare and merge project directories with zip archives from teachers"
  homepage "https://github.com/jaspermayone/ZipMerge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZipMerge.app"

  zap trash: [
    "~/Library/Preferences/com.singlefeather.ZipMerge.plist",
    "~/Library/Saved Application State/com.singlefeather.ZipMerge.savedState",
  ]
end
