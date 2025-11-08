{ ... }:

{
  networking = {
    hostName = "hyprland-btw";
    networkmanager.enable = true;
    # firewall.enable = true;        # (optional default; leave commented to avoid changing behavior)
  };

  time.timeZone = "Europe/Berlin";
}
