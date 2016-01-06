class CogDev < Formula
  desc "Cog development environment meta-formula"
  url "https://github.com/operable/homebrew-operable"
  version "1.0"

  depends_on "automake"
  depends_on "libtool"
  depends_on "erlang" => ["with-dirty-schedulers", "without-wxmac"]
  depends_on "elixir"
  depends_on "libsodium"
end
