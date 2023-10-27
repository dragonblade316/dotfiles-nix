{pkgs, inputs, ...}: {
	
	home.packages = with pkgs; [
		pkgs.rust-bin.stable.latest.default
		rust-analyzer

		rnix-lsp
		nixos-shell
		
		python3
		nodePackages_latest.pyright
		#nix-index
	];
}
