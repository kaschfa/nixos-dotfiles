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
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec niri-session
      fi
    '';
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use hyprland btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#hyprland-btw";
    }; 
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec niri-session
      fi
    '';
  };
}
