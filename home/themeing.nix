{config, pkgs, ...}: 
let
	wallpaper = ./wallpapers/sans.png;


in {  
	stylix = {
		image = wallpaper;
		polarity = "dark";
		autoEnable = true;
		opacity.terminal = 0.5;
	};

	#wallpaper stuff
	home = {
		file.".config/hypr/hyprpaper.conf".text = ''
				preload = ${wallpaper}
				wallpaper = HDMI-A-1, ${wallpaper} 
				wallpaper = eDP-1, ${wallpaper}
				wallpaper = DP-1, ${wallpaper}
			'';
		
		packages = with pkgs; [
			hyprpaper
		];
	};
}
