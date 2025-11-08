# home/modules/apps.nix
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # your custom helper
    (pkgs.writeShellApplication {
      name = "ns";
      runtimeInputs = with pkgs; [
        fzf
        (nix-search-tv.overrideAttrs { env.GOEXPERIMENT = "jsonv2"; })
      ];
      text = ''exec "${pkgs.nix-search-tv.src}/nixpkgs.sh" "$@"'';
    })

    # Wayland / Hyprland companions
    hyprlock hypridle swaybg wlogout wofi pywal swaynotificationcenter waybar

    # Desktop apps
    brave neovim ghostty kdePackages.dolphin steam zed-editor

    # CLI tools
    yazi ripgrep fzf fd fastfetch cmatrix clipse tree img2pdf lazygit

    # (bluetooth GUIs removed as you said you don't need BT on this PC)
    # blueman bluez
  ];
}
