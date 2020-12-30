class Makecolors < Formula
  desc "Converts a simple list of color definitions to asset catalogs for Xcode and resource XML for Android"
  homepage "https://github.com/5sw/MakeColors"
  url "https://github.com/5sw/MakeColors/archive/v0.1.0.tar.gz"
  sha256 "342f2ecd7b394775199b6acdbd9e5ac5e97c0286f887216bba0bb9a3a4a40522"
  license "MIT"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    system "cp", ".build/release/MakeColors", "#{prefix}/bin"
  end
end
