{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/core.nix
      ./modules/networking.nix
      ./modules/audio.nix
      ./modules/graphics.nix
      ./modules/desktop.nix
      ./modules/users.nix
      ./modules/development.nix
    ];

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    clipse
    yazi
    waybar
    fastfetch
    cmatrix
    ripgrep
    fzf
    fd
  ];

}
