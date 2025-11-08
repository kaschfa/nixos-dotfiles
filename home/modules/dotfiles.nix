# home/modules/dotfiles.nix
{ config, ... }:
{
  home.file.".config/hypr".source   = ../../config/hypr;
  home.file.".config/waybar".source = ../../config/waybar;
  home.file.".config/wofi".source   = ../../config/wofi;
  # fix nvim to be writable (absolute path!)
    home.file.".config/nvim".source =
      config.lib.file.mkOutOfStoreSymlink "/home/fabian/nixos-dotfiles/config/nvim";
}
