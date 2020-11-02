class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.4/proto2json-Beta1.0.4-macos-brew.tar.gz"
  sha256 "225419f0994d3443513729922116196bfa7d9408ca3cf5f6019b511e850af594"
  version "Beta1.0.4"
  def install
    bin.install "proto2json"
  end
  def caveats
    <<~EOS
    proto2json -h
    EOS
  end
end