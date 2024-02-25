{
	appimageTools,
	fetchurl,
	SDL2,
	openal,
	fuse,
	fusePackages,
	nss_latest,
	gtk3,
	binutils,
}: appimageTools.wrapType2 {
	name = "warp-terminal";

	src = fetchurl {
			url = "https://app.warp.dev/download?package=appimage";
			sha256 = "sha256-nWt/ONvlv72wvDGW2J4F+YY1tFRjhXw8viC53H2+sck=";
	};

	# extraPkgs = pkgs: [
	# 	SDL2
	# 	openal
	# 	fuse
	# 	fusePackages.fuse_2
	# 	nss_latest
	# 	gtk3
	# 	binutils
	# ];
	#
}
