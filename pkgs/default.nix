{pkgs, ...}: rec {
	cascadeur = pkgs.libsForQt5.callPackage ./cascadeur {};
	grammarly-languageserver = pkgs.callPackage ./grammarly-languageserver {};
	beyond_all_reason = pkgs.callPackage ./beyond_all_reason {};
	jupytext-nvim = pkgs.callPackage ./jupytext-nvim {};
	notebooknavigator-nvim = pkgs.callPackage ./notebooknavigator-nvim {};

	overlay = (final: prev: {
		vimPlugins = prev.vimPlugins // {
			jupytext-nvim = jupytext-nvim;
			notebooknavigator-nvim = notebooknavigator-nvim;
		};
	});
}
