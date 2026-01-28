class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.1.1/kps-arm64-v0.1.1.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    elsif Hardware::CPU.intel?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.1.1/kps-x86_64-v0.1.1.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  def install
    bin.install Hardware::CPU.arm? ? "kps-arm64" : "kps-x86_64" => "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
