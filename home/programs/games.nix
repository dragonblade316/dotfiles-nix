{pkgs, ...}: {
	home.packages = with pkgs; [
		steam
		winetricks
		protontricks
		#for mini ninjas
		openal
    (lutris.override { extraLibraries = pkgs: [pkgs.libunwind ]; })
		heroic
		xonotic
		grapejuice
		prismlauncher
	];

}
