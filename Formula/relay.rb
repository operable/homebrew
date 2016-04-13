class Relay < Formula
  desc "Cog's ChatOps command executor"
  homepage "https://github.com/operable/go-relay"
  url "https://github.com/operable/go-relay/releases/download/0.4.0-alpha/relay_darwin_amd64.tar.gz"
  version "0.4.0-alpha"
  sha256 "f266491540edcd2d431f0321450cd142d52d65b38d22757b42c8ecfc65c9345d"

  def install
    bin.install "relay"
    cp "example_relay.conf", "relay.conf"
    etc.install "relay.conf"
    doc.install "example_relay.conf"

    # Disable Docker on OSX
    `sed -i.bak 's/native,docker/native/g' #{etc}/relay.conf`
    rm_f "#{etc}/relay.conf.bak"
  end

  test do
    `#{bin}/relay --version`
  end
end
