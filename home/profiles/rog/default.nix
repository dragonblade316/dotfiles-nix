{
    imports = [
      ../../programs/git.nix
      ../../programs/misc.nix
      ../../themeing.nix
    ];

    wayland.windowManager.hyprland.enableNvidiaPatches = true;
}
