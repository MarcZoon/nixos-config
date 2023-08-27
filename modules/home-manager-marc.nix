{ config, pkgs, ...}:

{
    home-manager.useGlobalPkgs = true;
    home-manager.users.marc = {
        home = {
            packages = with pkgs; [

            ];
            stateVersion = "23.05";
        };
        programs = {
            home-manager.enable = true;
            direnv.enable = true;
    
            git = {
                enable = true;
                userName = "Marc Zoon";
                userEmail = "git@marczoon.nl";
            };
        };
    };
}