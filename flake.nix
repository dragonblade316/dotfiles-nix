{
  description = "dragonblade316's configuration files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
    
    # Home manager
    hm = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #flake-parts = {
    #  url = "github:hercules-ci/flake-parts";
    #  inputs.nixpkgs-lib.follows = "nixpkgs";
    #};

    nixvim = {
      url = "github:nix-community/nixvim";
      # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
      # url = "github:nix-community/nixvim/nixos-23.05";

      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      # build with your own instance of nixpkgs
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs: 
    let
      system = "x86_64-linux";

      pkgs = import inputs.nixpkgs {
        inherit system;
	config.allowUnfree = true;
	};

    in {
    	homeConfigurations = import ./home/profiles {inherit pkgs inputs system; };
	nixosConfigurations = import ./hosts {inherit inputs system pkgs;};

	packages.${system} = {
	    inherit pkgs;
	};
    };
	
}
