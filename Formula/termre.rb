class Termre < Formula
  desc "TERMinal REader - PDF/book reader for terminals using kitty graphics"
  homepage "https://term.re"
  version "0.10.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-macos-arm64.tar.gz"
      sha256 "22fc474af8980c048202960ff28c4c48576a9952365b6428bafbf90cc49b68e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-linux-x86_64.tar.gz"
      sha256 "64914dcb04ad472b27cf4ad934f468cbad9e553f0f0808926a4e7927dbead19e"
    end
  end

  def install
    bin.install "re"
  end

  test do
    assert_match "termre version", shell_output("#{bin}/re --version")
  end
end
