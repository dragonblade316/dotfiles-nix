{
  inputs,
  withSystem,
  module_args,
  ...
}: let 
    sharedModules = [
      ../.
      ../shell
      ../editors/neovim
      
    ];

    homeImports = {
      dragonblade316 = [./rog] ++ sharedModules;
    };

    inherit (inputs.hm.lib) homeManagerConfiguration;
  in {
    imports = [
      # we need to pass this to NixOS' HM module
      {_module.args = {inherit homeImports;};}
    ];

    flake = {
      homeConfigurations = withSystem "x86_64-linux" ({pkgs, ...}: {
        dragonblade316 = homeManagerConfiguration {
          modules = homeImports.dragonblade316;
          inherit pkgs;
        };
      });
    };
  }
