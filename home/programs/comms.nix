{pkgs, ...}: {
	home.packages = with pkgs; [
		webcord
		discord
		fractal
	];
}
