# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.1.0"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.1.0/git-deps-syncer.sh"
  sha256 "aefbcd1f401996bea62b7ef4c3cf165f6eae6dbc0e7adde1afed33818cf40230"
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
