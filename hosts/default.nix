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
  rog = nixosSystem {
      inherit system;
      modules = [
       ./rog
       ./modules/desktop.nix
       ./core.nix
      ];
    };
  
  wsl = nixosSystem {
    inherit system;
    modules = [
      ./wsl
      ./core.nix  
    ];
  };
}
