class MakeColors < Formula
  desc "Converts a simple list of color definitions to asset catalogs for Xcode and resource XML for Android"
  homepage "https://github.com/5sw/MakeColors"
  url "https://github.com/5sw/MakeColors.git", :tag => "v0.2.0", :revision => "911db304ae2b4c5f42d22b954220f47e1ac51253"
  head "https://github.com/5sw/MakeColors.git"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
