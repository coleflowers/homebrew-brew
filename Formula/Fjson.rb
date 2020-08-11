class Fjson < Formula
  desc "格式化json"
  homepage "https://github.com/coleflowers"
  url "https://github.com/coleflowers/homebrew-brew/releases/download/fjson-v1.0/fjson.tar.gz"
  sha256 "42ae915863781549eb1f3e72c9ad56428bfea1ce19b0ffaf1f209d7b19c7b096"
  version "1.0"
  def install
    bin.install "fjson"
  end
  def caveats
    <<~EOS
    格式化json,使用方法:
    curl https://www.test.com/a.json | fjson
    fjson file.json
    cat file.json | fjson
    EOS
  end
end