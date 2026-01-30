cask "zipmerge" do
  version "2.0.1"
  sha256 "f1d56db3a88b95cd786a67540c57d2f7288e5d13ef055e48943a3a05c86d7953"

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
