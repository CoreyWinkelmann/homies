{ config, pkgs, ... }:

{
  home.username = "cagenix";
  home.homeDirectory = "/home/cagenix";

  home.stateVersion = "24.11";

  home.packages = [
    pkgs.neovim
    pkgs.git
    pkgs.nerd-fonts.hack
    pkgs.fzf
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
