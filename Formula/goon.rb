class Goon < Formula
  desc "Middleman implementation for Porcelain"
  homepage "https://github.com/alco/goon"
  version "1.1.1"
  url "https://github.com/alco/goon/releases/download/v#{version}/goon_darwin_amd64.tar.gz"
  sha256 "e5ff3e52c6ce11c4da96064addd6e7f1d9ff9e21953cb83fc430d28741a061f2"

  def install
    bin.install "goon"
  end

  test do
    `system "#{bin}/goon", "--version"`
  end
end
