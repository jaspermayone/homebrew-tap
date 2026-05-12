class Boxcar < Formula
  desc "Rails app generator with opinionated defaults"
  homepage "https://github.com/jaspermayone/boxcar"
  url "https://github.com/jaspermayone/boxcar/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "9e23c939c7eb90ac7447713353e5c182d39b15febefd10b819b04e4a83386fe8"
  license "MIT"

  def install
    bin.install "boxcar"
  end

  test do
    assert_match "Usage: boxcar", shell_output("#{bin}/boxcar")
  end
end
