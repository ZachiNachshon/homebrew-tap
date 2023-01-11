# typed: false
# frozen_string_literal: true

class DotfilesCli < Formula
  desc "CLI utility for managing a remote dotfiles repository"
  homepage "https://github.com/ZachiNachshon/dotfiles-cli"
  version "0.7.0"
  url "https://github.com/ZachiNachshon/dotfiles-cli/releases/download/v0.7.0/dotfiles-cli.tar.gz"
  sha256 "33f1f63cbd6e2e666f8b0ffda38f038372863f7041ddaad1aa125670ccb9a72c"
  license "MIT"

  depends_on "git"

  def install
    # Add extracted files to the Homebrew install directory
    libexec.install Dir["*"]
    libexec.install Dir[".git-deps"]
    # Add a relative symlink from Homebrew libexec to bin folder
    bin.install_symlink libexec/"dotfiles.sh" => "dotfiles"
  end
  
  test do
    system "#{bin}/dotfiles version"
  end
end
