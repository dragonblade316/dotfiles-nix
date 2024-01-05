{
    imports = [
      ../../programs/git.nix
      ../../programs/misc.nix
      ../../themeing.nix
      ../../wayland/hypr
	  ../../programs/eww
			../../wayland/waybar.nix
			../../terminals/kitty.nix
			../../programs/mako.nix
			../../editors/vscode
			../../editors/intellij-idea
			../../programs/art.nix
			../../programs/comms.nix
			../../programs/games.nix
			../../programs/misc.nix
			../../programs/fuzzel.nix
			../../programs/dev.nix
			../../shell/nushell.nix
			../../programs/kdeconnect.nix
    ];
		wayland.windowManager.hyprland.extraConfig = ''
			#monitor=,preferred,auto,auto
			monitor= eDP-1, 2560x1440@165, 5760x720, 1
			workspace=eDP-1,2
			monitor= DP-1, 3840x2160@60, 1920x0, 1
			workspace DP-1,1
			monitor= HDMI-A-1, 1920x1080@60, 0x1080, 1
			workspace=HDMI-A-1,3
		'';


}
