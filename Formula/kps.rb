class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.2.0-test"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.2.0-test/kps-v0.2.0-test.tar.gz"
      sha256 "5c48a8a7b50a73518d2e22ef158bbf46330121133c3d12052e7a55d81f91bf3c"
    elsif Hardware::CPU.intel?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.2.0-test/kps-v0.2.0-test.tar.gz"
      sha256 "5c48a8a7b50a73518d2e22ef158bbf46330121133c3d12052e7a55d81f91bf3c"
    end
  end

  def install
    bin.install Hardware::CPU.arm? ? "kps-arm64" : "kps-x86_64" => "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
