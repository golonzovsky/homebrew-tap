class Termre < Formula
  desc "TERMinal REader - PDF/book reader for terminals using kitty graphics"
  homepage "https://term.re"
  version "0.12.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-macos-arm64.tar.gz"
      sha256 "6032000090780940332f62e694c7bcb5a170a23a99c2a91008f08b5f8c89e41a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-linux-x86_64.tar.gz"
      sha256 "bec7c52c693f7739f8c22792c2dc6162ab682119d1c0e243d48b11433165156b"
    end
  end

  def install
    bin.install "re"
  end

  test do
    assert_match "termre version", shell_output("#{bin}/re --version")
  end
end
