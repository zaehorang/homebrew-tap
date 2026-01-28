class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.1.1"
  license "MIT"

  url "https://github.com/zaehorang/KPSTool/releases/download/v0.1.1/kps-v0.1.1.tar.gz"
  sha256 "PLACEHOLDER_SHA256"

  def install
    bin.install "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
