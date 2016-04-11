class Relay < Formula
  desc "Cog's ChatOps command executor"
  homepage "https://github.com/operable/go-relay"
  url "https://github.com/operable/go-relay/releases/download/0.4.0-alpha/cog-relay_darwin_amd64.tar.gz"
  version "0.4.0-alpha"
  sha256 "d0c02211f38c56fdc831a2b43fb76b6307e52e7e7955a5d62f3d6851649c03aa"

  def install
    bin.install "cog-relay"
    cp "example_cog_relay.conf", "cog_relay.conf"
    etc.install "cog_relay.conf"
    doc.install "example_cog_relay.conf"

    # Disable Docker on OSX
    `sed -i.bak 's/native,docker/native/g' #{etc}/cog_relay.conf`
    rm_f "#{etc}/cog_relay.conf.bak"
  end

  test do
    `#{bin}/cog-relay --version`
  end
end
