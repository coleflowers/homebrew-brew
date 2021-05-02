class Linuxdoc < Formula
  desc "linuxdoc-tools, contain : sgml2html, sgml2latex, sgml2rtf, sgmlcheck, sgmlsasp, onsgmls, ospam, ospent, rtf2rtf, sgml2info, sgml2lyx, sgml2txt, sgmlpre"
  homepage "https://github.com/coleflowers"
  url "https://github.com/coleflowers/homebrew-brew/releases/download/fjson-v1.0/linuxdoc.tar.gz"
  sha256 "46f679dec3b68ecef91a95c0fac1f50b1645deb7f0f4649faf85ba5647d9439a"
  version "0.9.82"

  #link_overwrite "0.9.82/bin/linuxdoc"

  def install
    
    bin.install Dir["0.9.82/bin/*"]
    lib.install Dir["0.9.82/lib/*"]
    include.install Dir["0.9.82/include/*"]
    share.install Dir["0.9.82/share/*"]
    
    inreplace %W[
      #{bin}/linuxdoc
    ] do |s|
      s.gsub! "@@HOMEBREW_PREFIX@@", opt_prefix
    end
  end
  def caveats
    <<~EOS
    sgml2html -h
    EOS
  end
end
