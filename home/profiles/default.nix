{
  inputs,
  system,
  pkgs,
  ...
}:

with inputs;

let 

    imports = [
    #  hyprland.nixosModules.${system}.hm
    ];
    sharedModules = [
      ../.
      ../shell
      ../editors/neovim
      
    ];

    homeImports = {
      dragonblade316 = [./rog] ++ sharedModules ++ imports;
    };

    mkHome = {conf}: (
	hm.lib.homeManagerConfiguration {
		inherit pkgs;
		modules = [conf] ++ sharedModules ++ imports;
	}
    );


in {
  dragonblade316 = mkHome { conf = ./rog; };
  	

}
