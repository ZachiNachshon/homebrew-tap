# typed: false
# frozen_string_literal: true

class DotfilesCli < Formula
  desc "CLI utility for managing a remote dotfiles repository"
  homepage "https://github.com/ZachiNachshon/dotfiles-cli"
  version "0.2.0"
  url "https://github.com/ZachiNachshon/dotfiles-cli/releases/download/v0.2.0/dotfiles-cli.tar.gz"
  sha256 "8dfa4afeea0f9b47989d8d533d5cb98c440d65884eb41e15f780c7878a88260c"
  license "MIT"

  def install
    # Add the dotfiles script header to RC file (zsh, bashrc, bash_profile)
    system 'HOMEBREW_INSTALL="True" ./install.sh'
    bin.install_symlink "dotfiles.sh" => "dotfiles"
  end

  depends_on "git"
  
  test do
    system "#{bin}/dotfiles version"
  end
end
