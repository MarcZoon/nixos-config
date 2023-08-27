{config, pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        git
        htop
        tmux
    ];

    services = {
        openssh.enable = true;
    };
}