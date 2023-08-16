require 'formula'

class ErgoCli < Formula
  desc "Ergonomic.dev `ergo` CLI"
  homepage "https://ergonomic.dev/docs/cli-v0.html"
  version "0.2.0-rc.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ergonomic/cli/releases/download/v0.2.0-rc.3/ergo"
      sha256 "02acd093ead5bc9645c866136d4b1f4a2c9a3f4008d6824bafd5517f363ba686"
    else
      # not supported
    end
  elsif OS.linux?
    # not supported
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ergo"
      else
        # not supported
      end
    elsif OS.linux?
      # not supported
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
