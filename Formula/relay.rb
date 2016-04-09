class Relay < Formula
  desc "Cog's ChatOps command executor"
  homepage "https://github.com/operable/go-relay"
  url "https://github.com/operable/go-relay/releases/download/0.4.0-alpha/cog-relay_darwin_amd64.tar.gz"
  version "0.4.0-alpha"
  sha256 "2ae0f8d16b19376735467745f6a55d7ef6dd16356f3230c74cc614809fb014ff"

  def install
    bin.install "cog-relay"
    etc.install "example_cog_relay.conf"
    ln_s "#{etc}/example_cog_relay.conf", "#{etc}/cog_relay.conf"
  end

  test do
    `system "#{bin}/cog-relay", "--version"`
  end
end
