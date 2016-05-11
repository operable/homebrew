class JsonTable < Formula
  desc "JSON Swiss Army Knife"
  homepage "https://github.com/micha/json-table"
  url "https://github.com/micha/json-table/archive/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "6e74d0b5b82d2f04c069302d0c477aa7993012602da5dffb600e472049388775"

  def install
    system "make", "jt"
    bin.install "jt"
    man1.install "jt.1"
  end

  test do
    `system "#{bin}/jt", "-h"`
  end
end
