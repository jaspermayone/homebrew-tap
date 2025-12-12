class Boxcar < Formula
  desc "Rails app generator with opinionated defaults"
  homepage "https://github.com/jaspermayone/boxcar"
  url "https://github.com/jaspermayone/boxcar/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5a799e632270a0707fd72a6c628f4ece3855751ad3db9a0926336220743d9c26"
  license "MIT"

  def install
    bin.install "boxcar"
  end

  test do
    assert_match "Usage: boxcar", shell_output("#{bin}/boxcar")
  end
end
