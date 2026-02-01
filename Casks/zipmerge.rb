cask "zipmerge" do
  version "2.0.2"
  sha256 "635e79a3f94181d63893b097e80278933133c3fc0232b02f21f4e745cefa13cb"

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
