class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.0/proto2json-Beta1.0.0-macos-brew.tar.gz"
  sha256 "c4b07a78565607912005092854c85a6ff2f1899509f0ee569e4ecbb908db3cb0"
  version "1.0"
  def install
    bin.install "proto2json"
  end
  def caveats
    <<~EOS
    proto2json -h
    EOS
  end
end