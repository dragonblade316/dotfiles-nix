{pkgs, ...}: {
	home.packages = with pkgs; [
		steam
    (lutris.override { extraLibraries = pkgs: [pkgs.libunwind ]; })
		heroic
		xonotic
		grapejuice
		prismlauncher
	];

}
