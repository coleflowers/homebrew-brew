class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.2/proto2json-Beta1.0.2-macos-brew.tar.gz"
  sha256 "81d70deb9f67a8a9ffc51e2eb31e2b74b2b7d4d27d4beb26d693ed4ca7aebbe1"
  version "Beta1.0.2"
  def install
    bin.install "proto2json"
  end
  def caveats
    <<~EOS
    proto2json -h
    EOS
  end
end