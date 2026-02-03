cask "zipmerge" do
  version "2.0.3"
  sha256 "5b5c36e24fd50f600915ccb123f706d7945da760db046d89a00451ec35441d43"

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
