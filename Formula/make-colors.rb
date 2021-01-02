class MakeColors < Formula
  desc "Converts a simple list of color definitions to asset catalogs for Xcode and resource XML for Android"
  homepage "https://github.com/5sw/MakeColors"
  url "https://github.com/5sw/MakeColors.git", :tag => "v0.3.0", :revision => "e8a02b01800ca5593e98bc906f720fcf6e7aa5b3"
  head "https://github.com/5sw/MakeColors.git"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
