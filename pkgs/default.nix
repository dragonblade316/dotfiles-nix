{pkgs, ...}: {
	cascadeur = pkgs.libsForQt5.callPackage ./cascadeur {};
	grammarly-languageserver = pkgs.callPackage ./grammarly-languageserver {};
	beyond_all_reason = pkgs.callPackage ./beyond_all_reason {};
}
