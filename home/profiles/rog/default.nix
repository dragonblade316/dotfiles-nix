{
    imports = [
      ../../programs/git.nix
      ../../programs/misc.nix
      ../../themeing.nix
      ../../wayland/hypr
			../../wayland/waybar.nix
			#../../wayland/swaylock.nix
			../../terminals/kitty.nix
			../../programs/mako.nix
			# ../../editors/vscode
			#../../editors/intellij-idea
    ];

    wayland.windowManager.hyprland.enableNvidiaPatches = true;
}
