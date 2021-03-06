class Pacapt < Formula
  desc "Package manager in the style or Arch's pacman"
  homepage "https://github.com/icy/pacapt"
  url "https://github.com/icy/pacapt/archive/v2.3.8.tar.gz"
  sha256 "6ac7d16cf225a4fc625da40776577b62b44c6b83fe3a2e5b33fe3db467c1dd7e"

  bottle do
    cellar :any_skip_relocation
    sha256 "94853f20681f81a015846e94b0cc08d885b04f14d3efea044f20a6d9960147c6" => :el_capitan
    sha256 "c41985d5670e2a38ae53096fde8d3bdf03c9b122dd0c893e3749809b1b4e236d" => :yosemite
    sha256 "1279c6c1574261b292b6a236fba4399c9861ea14b063e314f6a4c7c74807a364" => :mavericks
  end

  def install
    bin.mkpath
    system "make", "install", "BINDIR=#{bin}", "VERSION=#{version}"
  end

  test do
    system "#{bin}/pacapt", "-Ss", "wget"
  end
end
