# nixos/modules/desktop.nix
{ pkgs, ... }:

{
  # Hyprland compositor at the system layer (user configs live in Home Manager)
  programs.niri.enable = true;
  
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    settings = {
      Autologin = {
        User = "fabian";
        Session = "niri-session";
      };
    };
  };

  # Portals: screen share, file pickers, etc. needed for Wayland desktops
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-gnome
    ];
  };

  security.polkit.enable = true;

  # Common Wayland-friendly environment hints (safe to keep; remove if undesired)
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";     # Wayland for Electron/Chromium apps when available
    MOZ_ENABLE_WAYLAND = "1"; # Firefox Wayland
    SDL_VIDEODRIVER = "wayland";
    QT_QPA_PLATFORM = "wayland";     # Qt apps on Wayland
    # WLR_NO_HARDWARE_CURSORS = "1"; # uncomment only if you see cursor glitches
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    swaybg 
    wlogout 
    fuzzel 
    ironbar 
    gnome-keyring
  ];

}
