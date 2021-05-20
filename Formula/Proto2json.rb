class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.5/proto2json-Beta1.0.5-macos-brew.tar.gz"
  sha256 "52a96274264409b5b28fa2c19cdb31c381ca18e31a9dcbe8b572e453f50b50a8"
  version "Beta1.0.5"
  def install
    bin.install "proto2json"
  end
  def caveats
    <<~EOS
    proto2json -h
    EOS
  end
end