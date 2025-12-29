class Boxcar < Formula
  desc "Rails app generator with opinionated defaults"
  homepage "https://github.com/jaspermayone/boxcar"
  url "https://github.com/jaspermayone/boxcar/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "feaf782a845bd96bbbdaa9f4e62412cb2721def89c55021bb1f6a49383e9000f"
  license "MIT"

  def install
    bin.install "boxcar"
  end

  test do
    assert_match "Usage: boxcar", shell_output("#{bin}/boxcar")
  end
end
