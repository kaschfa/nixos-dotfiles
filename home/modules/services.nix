{ config, pkgs, ... }: {
  # install the agent (if you don’t do this in system config)
  home.packages = [
    pkgs.kdePackages.polkit-kde-agent-1
    pkgs.mako
  ];

  systemd.user.services.plasma-polkit-agent = {
    Unit = {
      Description = "KDE polkit authentication agent";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Service = {
      Type = "simple";
      ExecStart = "${pkgs.kdePackages.polkit-kde-agent-1}/libexec/polkit-kde-authentication-agent-1";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
  systemd.user.services.mako = {
    Unit = {
      Description = "Mako notification daemon";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Service = {
      Type = "simple";
      ExecStart = "${pkgs.mako}/bin/mako";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
