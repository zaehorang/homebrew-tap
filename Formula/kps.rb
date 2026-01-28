class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.2.0"
  license "MIT"

  url "https://github.com/zaehorang/KPSTool/releases/download/v0.2.0/kps-v0.2.0.tar.gz"
  sha256 "d711ff2425dfa321fbd26e97c57e74807c673f8812f38e245d04443b55c86430"

  def install
    bin.install "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
