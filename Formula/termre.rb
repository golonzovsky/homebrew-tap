class Termre < Formula
  desc "TERMinal REader - PDF/book reader for terminals using kitty graphics"
  homepage "https://term.re"
  version "0.7.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-macos-arm64.tar.gz"
      sha256 "a9a66111af5e3674661991602f5e53bf95fcf6657b682f3f03d2de63e89e869e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-linux-x86_64.tar.gz"
      sha256 "dbf13db17a26ae20fe1f18ab600d867934f53aaa7e200c8c7f6a40d9c2ff0710"
    end
  end

  def install
    bin.install "re"
  end

  test do
    assert_match "termre version", shell_output("#{bin}/re --version")
  end
end
