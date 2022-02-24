# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.1.0"
  "https://github.com/ZachiNachshon/git-deps-syncer/archive/refs/tags/v0.1.0.zip"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.1.0/git-deps-syncer.sh"
  sha256 "002c2af1497997e8ef9014ac4af9d6725be6809c38e62379379de5063b0ebdb7"
  license "MIT"

  def install
    bin.install "git-deps-syncer"
  end

  depends_on "git" => :run
  depends_on "jq" => :run
  depends_on "gh" => :optional

  test do
    system "#{bin}/git-deps-syncer version"
  end
end
