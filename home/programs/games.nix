{pkgs, ...}: {
	home.packages = with pkgs; [
		steam
		winetricks
		protontricks
    (lutris.override { extraLibraries = pkgs: [pkgs.libunwind ]; })
		heroic
		xonotic
		grapejuice
		prismlauncher
	];

}
