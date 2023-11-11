{config, pkgs, ...}: 
let
	wallpaper = ./wallpapers/cat_bunnies.png;


in {  
	stylix = {
		image = wallpaper;
		polarity = "dark";
		autoEnable = true;
		opacity.terminal = 0.5;
	};

	stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";


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
