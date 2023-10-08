{pkgs, ...}: {
	home.packages = with pkgs; [
		discord
		fractal
	]
}
