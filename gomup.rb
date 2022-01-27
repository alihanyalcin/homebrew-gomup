class Gomup < Formula
  desc "Go Module Dependency Upgrade Tool"
  homepage "https://github.com/alihanyalcin/gomup"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/alihanyalcin/gomup/releases/download/v0.1.0/gomup_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "767893f273d58a0047adfe58e134922e7f5a8fd0cdade01253eee972e127a44b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/alihanyalcin/gomup/releases/download/v0.1.0/gomup_0.1.0_Linux_x86_64.tar.gz"
    sha256 "29f893ef5320b58181f5ce6b0ae0de8dfe0c2a72ef03fbeec4b42fc5b34ef35f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/alihanyalcin/gomup/releases/download/v0.1.0/gomup_0.1.0_Linux_arm64.tar.gz"
    sha256 "d34697836d24e4ab2bd7c81d9024649e84f9d218dcde8ecce0baf705ef1c36da"
  end

  depends_on "git"

  def install
    bin.install "gomup"
  end

end
