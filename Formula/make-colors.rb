class MakeColors < Formula
  desc "Converts a simple list of color definitions to asset catalogs for Xcode and resource XML for Android"
  homepage "https://github.com/5sw/MakeColors"
  url "https://github.com/5sw/MakeColors.git", :tag => "v0.1.0", :revision => "f7d7f766463e09a3f7e326ed9dc4fd3db3edec49"
  head "https://github.com/5sw/MakeColors.git"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    system "install", "-d", "#{prefix}/bin"
    system "install", ".build/release/MakeColors", "#{prefix}/bin/make-colors"
  end
end
