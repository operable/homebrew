class Cogctl < Formula
  desc "Admin tool for Cog The ChatOps Bot"
  homepage "https://operable.io"
  url "https://github.com/operable/cogctl/archive/0.3.1.tar.gz"
  version "0.3.1"
  sha256 "4d63063623734b651e954096981bdda5620ac5e215423569fb42aed3b8bc5747"

  depends_on "elixir"

  def install
    ENV["MIX_QUIET"] = "1"
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    system "mix", "deps.get"
    system "mix", "escript.build"
    bin.install "#{buildpath}/cogctl"
  end

end
