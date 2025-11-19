# home/modules/dotfiles.nix
{ config, ... }:
{
  #home.file.".config/hypr".source   = ../../config/hypr;
  home.file.".config/niri/config.kdl".source = ../../config/niri/config.kdl;
  #home.file.".config/waybar".source = ../../config/waybar;
  home.file.".config/ironbar".source = ../../config/ironbar;
  home.file.".config/wofi".source = ../../config/wofi;
  home.file.".config/xdg-desktop-portal/portals.conf".source =
    ../../config/xdg-desktop-portal/niri-portals.conf;
  # fix nvim to be writable (absolute path!)
  home.file.".config/nvim".source =
    config.lib.file.mkOutOfStoreSymlink "/home/fabian/nixos-dotfiles/config/nvim";
}
