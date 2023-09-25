{
  self, 
  inputs, 
  default, 
  ...
}: let
  module_args._module.args = {
    inherit default inputs self;
  };
in {
  imports = [
    {
      _module_args = {
        inherit module_args;

        sharedModules = [
          ({
            pkgs,
            self
          }: {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
            };
          })

          inputs.hm.nixosModule
          inputs.hyprland.nixosModules.default
          module_args
          ./core.nix
        ];
      };
    }
  ];

  flake.nixosModules = {
    core = import ./core.nix
  }
}
