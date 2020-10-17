# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ActualstorageSwift < Formula
  desc "CLI version of Actual Storage Android app written in Swift."
  homepage ""
  url "https://github.com/bryceac/ActualStorage-Swift/archive/actual-0.2.tar.gz"
  sha256 "6409b20d46b015ae68dbf53b7fe2e279f7747c7a1c5cc889b7f44825b2777e51"
  license "MIT"

  depends_on :rsync

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/actual", "--help"
  end
end
