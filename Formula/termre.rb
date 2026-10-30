class Termre < Formula
  desc "TERMinal REader - PDF/book reader for terminals using kitty graphics"
  homepage "https://term.re"
  version "0.15.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-macos-arm64.tar.gz"
      sha256 "29df49cf4e081a36f421546986c0d969004d52a87dfd83f24b30392aa0735c06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-linux-x86_64.tar.gz"
      sha256 "d67fbc828b3d013056101df265c904b2f38a4ba581c0c810a7489bbcc52c97f8"
    end
  end

  def install
    bin.install "re"
  end

  test do
    assert_match "termre version", shell_output("#{bin}/re --version")
  end
end
