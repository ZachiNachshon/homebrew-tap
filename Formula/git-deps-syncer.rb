# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.3.0"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.3.0/git-deps-syncer.sh"
  sha256 "1a3ce17e9190f9bd83d9ba98180a39c53f40410cd5495d417d901e7c90690e3b"
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
