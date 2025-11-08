# home/modules/shell.nix
{ ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      btw = "echo i use hyprland btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#hyprland-btw";
    };
    # Load pywal colors in every new shell
    initContent = ''
      [ -f "$HOME/.cache/wal/colors.sh" ] && source "$HOME/.cache/wal/colors.sh"
    '';
    # Auto-start Hyprland on TTY1
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec hyprland
      fi
    '';
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use hyprland btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#hyprland-btw";
    };
    initExtra = ''
      [ -f "$HOME/.cache/wal/colors.sh" ] && source "$HOME/.cache/wal/colors.sh"
    '';
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec hyprland
      fi
    '';
  };
}
