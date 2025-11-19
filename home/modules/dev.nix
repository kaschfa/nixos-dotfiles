{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    # Nix tooling
    statix
    alejandra
    deadnix
    nil

    # other dev tools you might want here later
    # git-credential-manager
    # jq
    # ripgrep
    # fd
  ];

  # If you want: a direnv integration for Nix (nice with dev shells)
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
