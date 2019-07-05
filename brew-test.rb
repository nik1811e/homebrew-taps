class BrewTest < Formula
  desc "Simple `hello Homebrew` application"
  homepage "https://github.com/nik1811e/brew-test"
  url "https://github.com/nik1811e/brew-test/archive/v4.0.1.tar.gz"
  sha256 "8ab6cf1af10197246375c3dcf2a6b930609d790f81fb831d489a4576d6d54c3c"

  depends_on :java

    def install
	inreplace "srcclr", "##PREFIX##", "#{prefix}"
	inreplace "srcclr", "##VERSION##", "#{version}"
	prefix.install "brew-#{version}.jar"
	bin.install "srcclr"
  end

end
