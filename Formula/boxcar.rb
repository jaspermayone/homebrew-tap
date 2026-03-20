class Boxcar < Formula
  desc "Rails app generator with opinionated defaults"
  homepage "https://github.com/jaspermayone/boxcar"
  url "https://github.com/jaspermayone/boxcar/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "619052b291911da67cb7ea64c1e35b287e7cd0a1bff201d0e5404de9d6987904"
  license "MIT"

  def install
    bin.install "boxcar"
  end

  test do
    assert_match "Usage: boxcar", shell_output("#{bin}/boxcar")
  end
end
