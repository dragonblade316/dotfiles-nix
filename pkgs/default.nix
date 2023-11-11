{pkgs, ...}: {
	cascadeur = pkgs.libsForQt5.callPackage ./cascadeur {};
	grammarly-languageserver = pkgs.callPackage ./grammarly-languageserver {};
}
