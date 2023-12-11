#fix

{pkgs}: {
	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;

		extraConfig = {
      show-icons = true;
      display-drun = "";
      drun-display-format = "{icon} {name}";
      disable-history = false;
      click-to-exit = true;
      modi = "drun";
    };
	};
}
