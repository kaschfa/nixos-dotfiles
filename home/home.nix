{ config, pkgs, ... }:

{
  home.username = "fabian";
  home.homeDirectory = "/home/fabian";
  home.stateVersion = "25.05";

  imports = [
      ./modules/shell.nix
      ./modules/apps.nix
      ./modules/dotfiles.nix
      ./modules/gaming.nix
      ./modules/git.nix
    ];
}
