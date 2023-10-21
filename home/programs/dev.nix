{pkgs, ...}: {
	
	home.packages = with pkgs; [
		pkgs.rust-bin.stable.latest.default
		rust-analyzer

		rnix
		
	]
}
