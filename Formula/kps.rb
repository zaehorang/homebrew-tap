class Kps < Formula
  desc "Algorithm problem-solving tracker for BOJ & Programmers"
  homepage "https://github.com/zaehorang/KPSTool"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.1.1/kps-arm64-v0.1.1.tar.gz"
      sha256 "b2b002b7f1862dea0a69d4fe404a5dece1dad70072774f57c8d25170c71c0b34"
    elsif Hardware::CPU.intel?
      url "https://github.com/zaehorang/KPSTool/releases/download/v0.1.1/kps-x86_64-v0.1.1.tar.gz"
      sha256 "1aa401a42950e62401deb9204e161e1bef93ad4e3f02201a2a642e900be689dd"
    end
  end

  def install
    bin.install Hardware::CPU.arm? ? "kps-arm64" : "kps-x86_64" => "kps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kps --version")
  end
end
