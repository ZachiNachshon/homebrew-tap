# typed: false
# frozen_string_literal: true

class DotfilesCli < Formula
  desc "CLI utility for managing a remote dotfiles repository"
  homepage "https://github.com/ZachiNachshon/dotfiles-cli"
  version "0.2.0"
  url "https://github.com/ZachiNachshon/dotfiles-cli/releases/download/v0.2.0/dotfiles-cli.tar.gz"
  sha256 "0ce66da6a2aee37e11b2a7cf9292fe0b446195ba0febc7c29da541e4e4cc8ed4"
  license "MIT"

  def install
    # Add the dotfiles script header to RC file (zsh, bashrc, bash_profile)
    bin.install 'HOMEBREW_INSTALL="True" install.sh'
    bin.install_symlink "dotfiles.sh" => "dotfiles"
  end

  depends_on "git"
  
  test do
    system "#{bin}/dotfiles version"
  end
end
