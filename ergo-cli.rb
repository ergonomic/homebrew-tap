class CLI < Formula
  desc "Ergonomic.dev `ergo` CLI"
  homepage "https://ergonomic.dev/docs/cli-v0.html"
  version "0.2.0-rc.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ergonomic/cli/releases/download/v0.2.0-rc.1/ergo-cli"
      sha256 "dd4e676f103aa8ce161a17f3c466dce3d23379bf31cf39245adab862cf78b35e"
    else
      # not supported
    end
  elsif OS.linux?
    # not supported
  end

  option "with-bosh2", "Rename binary to 'bosh2'. Useful if the old Ruby CLI is needed."

  def install
    # this will be "ergo" in the future, but it only does `envrc` for now.
    binary_name = "ergo-envrc"

    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ergo-cli" => binary_name
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
