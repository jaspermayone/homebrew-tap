cask "zipmerge" do
  version "1.0.0"
  sha256 "67359b6956c30c03573f1f5d5a63b1c7c8bcb7fac39b28359e272aeb02039db1"

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
