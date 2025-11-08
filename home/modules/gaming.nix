# home/modules/gaming.nix
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wowup-cf
    steam
  ];
}
