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

    # Desktop apps
    neovim ghostty doublecmd steam zed-editor

    # CLI tools
    ripgrep fzf fd fastfetch cmatrix clipse tree img2pdf lazygit tree-sitter tmux
    nh

    # (bluetooth GUIs removed as you said you don't need BT on this PC)
    # blueman bluez
  ];

  programs.yazi.enable = true;
}
