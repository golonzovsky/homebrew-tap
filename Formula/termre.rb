class Termre < Formula
  desc "TERMinal REader - PDF/book reader for terminals using kitty graphics"
  homepage "https://term.re"
  version "0.13.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-macos-arm64.tar.gz"
      sha256 "1846d309f8c100643a5f52dc6ff0eb00b862fd63e663f156d8d8b4937be58475"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/golonzovsky/termre/releases/download/v#{version}/re-v#{version}-linux-x86_64.tar.gz"
      sha256 "5733d7de34c35279903c901efbdd685a8e4b66d938f013111c78846f87b34a83"
    end
  end

  def install
    bin.install "re"
  end

  test do
    assert_match "termre version", shell_output("#{bin}/re --version")
  end
end
