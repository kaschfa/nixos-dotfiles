# nixos/modules/users.nix
{ pkgs, ... }:

{
  # Your primary user
  users.users.fabian = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];  # sudo
    shell = pkgs.zsh;
    # (no packages here—those live in Home Manager)
  };

  # System-wide availability of shells
  programs.zsh.enable = true;
  environment.shells = [ pkgs.zsh ];

  # Keep your current TTY autologin (unchanged behavior)
  # services.getty.autologinUser = "fabian";
}
