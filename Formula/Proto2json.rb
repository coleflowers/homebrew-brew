class Proto2json < Formula
  desc "proto文件转json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/thinkcn/proto2json/releases/download/Beta1.0.1/proto2json-Beta1.0.1-macos-brew.tar.gz"
  sha256 "7abaf97653e0156e0f2a20c7636e4f141d28f61c393a6c7ad2e742cc888b25a4"
  version "Beta1.0.1"
  def install
    bin.install "proto2json"
  end
  def caveats
    <<~EOS
    proto2json -h
    EOS
  end
end