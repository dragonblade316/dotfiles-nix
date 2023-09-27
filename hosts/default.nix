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
       ./core.nix
       
       #more stuff such as bluetooth and sound will go here later
      ];
    };
}
