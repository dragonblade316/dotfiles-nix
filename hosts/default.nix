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

  rog = nixosSystem {
      inherit system;
      modules = [
       ./main
       ./modules/desktop.nix
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
