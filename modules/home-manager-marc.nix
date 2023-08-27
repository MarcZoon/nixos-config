{ config, pkgs, ...}:

{
    home-manager.useGlobalPkgs = true;
    home-manager.users.marc = {
        home = {
            packages = with pkgs; [
                discord
                obsidian
                telegram-desktop
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

            zsh = {
                enable = true;
                shellAliases = {
                    update = "sudo  nixos-rebuild switch";
                };
                oh-my-zsh = {
                    enable = true;
                    theme = "robbyrussell";
                    plugins = [
                        "git"
                    ];
                };
            };
        };
    };
}