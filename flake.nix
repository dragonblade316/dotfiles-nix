{
  description = "dragonblade316's configuration files";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # Home manager
    hm = {
      url = "github:nix-community/home-manager/";
      #inputs.nixpkgs.follows = "nixpkgs";
    };

		sops-nix.url = "github:Mic92/sops-nix";
		
		stylix = {
			url = "github:danth/stylix";
		};

		rust-overlay.url = "github:oxalica/rust-overlay";

		blender.url = "github:edolstra/nix-warez?dir=blender";

		nix-index-database.url = "github:Mic92/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: 
    let
      system = "x86_64-linux";

			overlays = [inputs.blender.overlays.default inputs.rust-overlay.overlays.default];
      pkgs = import inputs.nixpkgs {
        inherit system overlays;
				config.allowUnfree = true;
			};

    in {

    	homeConfigurations = import ./home/profiles {inherit pkgs inputs system; };
			nixosConfigurations = import ./hosts {inherit inputs system pkgs;};
			packages.${system} = import ./pkgs {inherit pkgs;};
    };
	
}
