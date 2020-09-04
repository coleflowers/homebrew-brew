class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.2/proto2json-Beta1.0.2-macos-brew.tar.gz"
  sha256 "c0872bfc32ec63689b9046ef0adfdd5909e74497bd26d5d1451d4f26dd59a58a"
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