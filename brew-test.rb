# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BrewTest < Formula
  desc ""
  homepage "https://github.com/nik1811e/brew-test"
  url "https://github.com/nik1811e/brew-test/archive/v2.2.1.zip"
  sha256 "16f9547c20ac9496f3bcc94d3e107fea9d4334bf6ac67de8eb2c5fdd11d8bd5b"


  def install
      inreplace "brew-test", "##PREFIX##", "#{prefix}"
      prefix.install "brew-0.0.1.jar"
      bin.install "srcclr"	
  end

end
