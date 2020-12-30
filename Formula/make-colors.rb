class MakeColors < Formula
  desc "Converts a simple list of color definitions to asset catalogs for Xcode and resource XML for Android"
  homepage "https://github.com/5sw/MakeColors"
  url "https://github.com/5sw/MakeColors.git", :tag => "v0.1.1", :revision => "742b50f81f1cb6b9550f8b95899c0a3ac8568a06"
  head "https://github.com/5sw/MakeColors.git"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
