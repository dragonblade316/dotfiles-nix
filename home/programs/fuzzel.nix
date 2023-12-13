{
	pkgs,
	...
}: {
	programs.fuzzel = {
		enable = true;
		settings = {
			main = {
				terminal = "$(pkgs.kitty)/bin/kitty";
				width = "60";
				lines = "30";
				icon-theme = "candy-icons";

				line-height = "30";
			};
		};
	};
}
