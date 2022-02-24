# typed: false
# frozen_string_literal: true

class GitDepsSyncer < Formula
  desc "Sync git repositories as external source dependencies"
  homepage "https://ZachiNachshon.github.io/git-deps-syncer/"
  version "0.2.0"
  url "https://github.com/ZachiNachshon/git-deps-syncer/releases/download/v0.2.0/git-deps-syncer.sh"
  sha256 "ce9e0c13c8307eb882836adb55ddf1ce025615f6fea72f4517d08abdc3cebefb"
  license "MIT"

  def install
    # move 'git-deps-syncer.sh' under #{prefix}/bin/
    bin.install "git-deps-syncer.sh"
  end

  depends_on "git"
  depends_on "jq"
  depends_on "gh" => :optional

  test do
    system "#{bin}/git-deps-syncer version"
  end
end
