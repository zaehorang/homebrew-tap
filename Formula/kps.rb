class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.2.0"
  license "MIT"

  url "https://github.com/zaehorang/KPSTool/releases/download/v0.2.0/kps-v0.2.0.tar.gz"
  sha256 "6679a23199cc1bfd3fda32b8df55d9c9ed3dc15e8b514109d62135da4969e807"

  def install
    bin.install "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
