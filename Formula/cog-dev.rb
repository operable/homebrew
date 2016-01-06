class CogDev < Formula
  desc "Cog development environment meta-formula"
  version "1.0"

  depends_on "erlang" => "with-dirty-schedulers"
  depends_on "elixir"
  depends_on "libsodium"
end
