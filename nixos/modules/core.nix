# nixos/modules/core.nix
{ pkgs, ... }:

{
  # --- Nix & nixpkgs ---
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  # --- Boot / Kernel ---
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # --- Fonts (system-wide) ---
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  # --- NixOS release baseline ---
  system.stateVersion = "25.05";
}
