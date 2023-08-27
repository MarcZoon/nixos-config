{ config, pkgs, ... }:

{
    programs.zsh = {
        enable = true;
        histFile = "$HOME/.config/zsh/.zhistory";
    };

    security.sudo.enable = true;
    security.sudo.wheelNeedsPassword = true;

    users.users.marc = {
        description = "Marc Zoon";
        isNormalUser = true;
        extraGroups = [
            "docker"
            "networkmanager"
            "wheel"
        ];
        shell = pkgs.zsh;
        uid = 1000;

    };
}