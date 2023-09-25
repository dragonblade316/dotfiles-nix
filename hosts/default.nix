{
  inputs,
  sharedModules,
  homeImports,
  ...
}: {
  flake.nixosConfigurations = let
    inherit (inputs.nixpkgs.lib) nixosSystem;
  in {
    rog = nixosSystem {
      modules = [
       ./rog
       #more stuff such as bluetooth and sound will go here later
      ] ++ sharedModules;
    };
  };
}
