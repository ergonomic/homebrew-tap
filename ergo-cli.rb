require 'formula'

class ErgoCli < Formula
  desc "Ergonomic.dev `ergo` CLI"
  homepage "https://ergonomic.dev/docs/cli-v0.html"
  version "0.2.0-rc.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ergonomic/cli/releases/download/v0.2.0-rc.2/ergo"
      sha256 "1759fe8a8f5579fbf8c68e1f063a1a3a4083b1834984ef00d8d1bd6aa8f9e0ff"
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
