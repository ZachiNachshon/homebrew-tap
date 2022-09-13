# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.6.0"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.6.0/git-deps-syncer.tar.gz"
  sha256 "e478b648fac03864fef85e2db1c197c8db81f0d6d34f3584955fc4a56bb30c41"
  license "MIT"

  depends_on "git"
  depends_on "jq"
  depends_on "gh" => :optional

  def install
    # Add extracted files to the Homebrew install directory
    libexec.install Dir["*"]
    libexec.install Dir[".git-deps"]
    # Add a relative symlink from Homebrew libexec to bin folder
    bin.install_symlink libexec/"git-deps-syncer.sh" => "git-deps-syncer"
  end
  
  test do
    system "#{bin}/git-deps-syncer version"
  end
end
