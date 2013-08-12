require 'formula'

class Slimerjs < Formula
  homepage 'http://slimerjs.org/'
  url 'http://download.slimerjs.org/v0.8/slimerjs-0.8-mac.tar.bz2'
  sha1 '452622b675039d1340bdcf9aa08b508f0a0b5370'

  def install
    prefix.install Dir['*']
    bin.mkdir
    ln_s "#{prefix}/slimerjs", "#{bin}/slimerjs"
  end

end
