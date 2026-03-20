class Boxcar < Formula
  desc "Rails app generator with opinionated defaults"
  homepage "https://github.com/jaspermayone/boxcar"
  url "https://github.com/jaspermayone/boxcar/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "3488121cbca943bbb8ee7d6ba7713fb7295d11710abb24d2a7ae59c49d79ddc1"
  license "MIT"

  def install
    bin.install "boxcar"
  end

  test do
    assert_match "Usage: boxcar", shell_output("#{bin}/boxcar")
  end
end
