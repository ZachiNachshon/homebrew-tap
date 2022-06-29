# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.4.0"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.4.0/git-deps-syncer.sh"
  sha256 "b695d40a98a3f88ecf117b6e74369added02e5139618167c02d377d8415a2c9a"
  license "MIT"

  def install
    # move 'git-deps-syncer.sh' to #{prefix}/bin/git-deps-syncer
    bin.install "git-deps-syncer.sh" => "git-deps-syncer"
  end

  depends_on "git"
  depends_on "jq"
  depends_on "gh" => :optional

  test do
    system "#{bin}/git-deps-syncer version"
  end
end
