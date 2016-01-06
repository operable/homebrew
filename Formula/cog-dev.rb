class CogDev < Formula
  desc "Cog development environment meta-formula"
  url "https://github.com/operable/homebrew-operable"
  version "1.0"
  sha256 "09a8f2877e568efc2a437bad0edeecc7f655bc5a35aaf6498d89143892fbec5f"

  depends_on "erlang" => ["with-dirty-schedulers", "without-wxmac"]
  depends_on "libsodium"

  def install
    `/usr/local/bin/brew install elixir`
  end

end
