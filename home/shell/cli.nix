{pkgs, ...}: {
  home.packages = with pkgs; [
    zip
    unzip
    unrar

    grim
    slurp

		btop

    ripgrep

		imagemagick

		neofetch

		#busybox is already on the system but its version of wget does not support a spesific option that lutris needs
		wget
  ];
}
