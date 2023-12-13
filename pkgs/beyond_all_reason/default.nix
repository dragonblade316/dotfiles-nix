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
}: appimageTools.wraptype2 {
	name = "beyond_all_reason";

	src = fetchurl {
			url = "https://github.com/beyond-all-reason/BYAR-Chobby/releases/download/v1.2470.0/Beyond-All-Reason-1.2470.0.AppImage";
			sha256 = "";
	};

	extraPackages = [
		SDL2
		openal
		fuse
		fusePackages.fuse2
		nss_latest
		gtk3
		binutils
	];

}
