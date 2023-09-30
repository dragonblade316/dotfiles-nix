{config, ...}: {
	programs.waybar = {
		enable = true;
		settings = {
			mainBar = {
				layer = "top";
				position = "top";

				modules-left = ["mpris" "wireplumber"];
				modules-center = ["hyprland/workspaces" "hyprland/window"];
				modules-right = ["battery" "cpu" "memory" "network" "tray" "clock"];


				"mpris" = {
					format = ''DEFAULT: {player_icon} {dynamic}'';
					format-paused = ''DEFAULT: {status_icon} <i>{dynamic}</i>'';
					player-icons = {
						default = "▶";
            mpv = "🎵";
					};
					status-icons = {
						paused = "⏸";
					};
					max-length = 50;
				};

				"wireplumber" = {
					format = ''{volume}% {icon}'';
					format-muted = ''{volume}% '';
					on-click = "pamixer --toggle-mute";
					on-click-middle = "pavucontrol";
					on-scroll-up = "pamixer --increase 1";
					on-scroll-down = "pamixer --decrease 1";
					format-icons = ["" "" ""];
				};

				"cpu" = {
					interval = 1;
					format = ''{icon0}{icon1}{icon2}{icon3}{icon4}{icon5}{icon6}{icon7'';
					format-icons = [
						''<span color='#69ff94'>▁</span>'' # green
          	''<span color='#2aa9ff'>▂</span>'' # blue
          	''<span color='#f8f8f2'>▃</span>'' # white
          	''<span color='#f8f8f2'>▄</span>'' # white
          	''<span color='#ffffa5'>▅</span>'' # yellow
          	''<span color='#ffffa5'>▆</span>'' # yellow
          	''<span color='#ff9977'>▇</span>'' # orange
          	''<span color='#dd532e'>█</span>''
					];
				};

				"memory" = {
					interval = 30;
					format = ''{}% '';
					max-length = 10;
				};

				"battery" = {
					interval = 60;
					states = {
						warning = 30;
        		critical = 15;
					};
					format = ''{capacity}% {icon}'';
					format-icons = ["" "" "" "" ""];
					max-length = 25;
				};

				"network" = {
					format = ''{ifname}'';
					format-wifi = ''{essid} ({signalStrength}%) '';
					format-ethernet = ''{ipaddr}/{cidr} '';
					format-disconnected = ''disconnected'';
					tooltip-format = ''{ifname} via {gwaddr} '';
					tooltip-format-wifi = ''{essid} ({signalStrength}%) '';
					tooltip-format-ethernet = ''{ifname}'';
					tooltip-format-disconnected = ''Disconnected'';
					max-length = 50;
					on-click = "kitty nmtui";
				};
			};
		};

		#TODO rewrite this to take advantage of nix colors
		# style = ''
		# 	@define-color base00 #181818;
		# 	@define-color base01 #2b2e37;
		# 	@define-color base02 #3b3e47;
		# 	@define-color base03 #585858;
		# 	@define-color base04 ${config.colorScheme.colors.base04};
		# 	/*
		# 	@define-color black #000000;
		#
		# 	@define-color tokiocyan #00ffd2;
		# 	@define-color tokiopink #ff4499;
		# 	@define-color tokionavy #0a0047;
		# 	@define-color tokioblue #0a0047;
		# 	*/
		# 	* {
  #   			border-radius: 10px;
  #   			font-family: "FiraMono Nerd Font";
  #   			font-size: 18px;
  #   			font-weight: 500;
  #   			padding: 0.5;
  #   			margin: 0;
  #   			margin-right: 15px;
  #   			margin-left: 15px;
  #   			transition-delay: 3s;
		# 	}
		#
		# 	#waybar {
  # 			background-color: transparent;
		# 	}
		#
		#
		# 	#window, #clock, #tray, #network, #cpu, #memory, #wireplumber, #mpris, #battery {
  # 			color: base04;
  # 			background-color: #0a0047;;
		# 	}
		#
		# '';

	};
}
