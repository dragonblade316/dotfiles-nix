{
  inputs,
  system,
  pkgs,
  ...
}:

with inputs;
let
  inherit (nixpkgs.lib) nixosSystem;
in {
  main = nixosSystem {
    inherit system;
    modules = [
      ./main
      ./modules/desktop.nix
			./modules/polkit.nix
      ./core.nix
    ];
  };

	framework = nixosSystem {
		inherit system;
		modules = [
			./framework
			./modules/desktop.nix
			./core.nix
		];
	};


	homeserver = nixosSystem {
		inherit system;
		modules = [
			./homeserver
			./core.nix
		];
	};

	halcyon = nixosSystem {
		inherit system;
		modules = [
			./halcyon
			./core.nix
		];
	};

  wsl = nixosSystem {
    inherit system;
    modules = [
      ./wsl
      ./core.nix
      inputs.nixos-wsl  
    ];
  };
}
