{pkgs, ...}: {
	home.packages = with pkgs; [
		steam
		lutris
		heroic
		xonotic
		grapejuice
		prismlauncher
	];

}
