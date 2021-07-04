class Upx < Formula
  desc "upx for apple m1(arm64),The Ultimate Packer for eXecutables"
  homepage "https://github.com/coleflowers"
  url "https://github.com/coleflowers/homebrew-brew/releases/download/upx/upx.4.0.0-git-66fe8a624d1a.tar.gz"
  sha256 "fcfbed075dd510a96305e9209c32ad5c05127e31d3c7806183e16432dbc3051a"
  version "4.0.0-git-66fe8a624d1a"

  def install
    
    bin.install Dir["4.0.0-git-66fe8a624d1a/bin/*"]
    lib.install Dir["4.0.0-git-66fe8a624d1a/lib/*"]
    include.install Dir["4.0.0-git-66fe8a624d1a/include/*"]
    share.install Dir["4.0.0-git-66fe8a624d1a/share/*"]
    
    #inreplace %W[
    #  #{bin}/upx
    #] do |s|
    #  s.gsub! "@@HOMEBREW_PREFIX@@", opt_prefix
    #end
  end
  def caveats
    <<~EOS
    upx -v
    EOS
  end
end
