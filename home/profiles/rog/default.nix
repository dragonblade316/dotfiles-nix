{
    imports = [
      ../../programs/git.nix
      ../../programs/misc.nix
      ../../themeing.nix
      ../../wayland/hypr
			../../wayland/waybar.nix
			../../wayland/swaylock.nix
    ];

    wayland.windowManager.hyprland.enableNvidiaPatches = true;
}
