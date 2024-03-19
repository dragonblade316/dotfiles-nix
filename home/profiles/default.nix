{
  inputs,
  system,
  pkgs,
  ...
}:

with inputs;

let 
  sharedModules = [
    ../.
		../shell
    ../editors/neovim
		inputs.stylix.homeManagerModules.stylix
		inputs.nix-index-database.hmModules.nix-index
	];

  mkHome = {conf}: (
		hm.lib.homeManagerConfiguration {
		inherit pkgs;
		modules = [conf] ++ sharedModules ++ imports;
	});


in {
	"dragonblade316@dragonblade316" = mkHome { conf = ./main; };
	"dragonblade316@thomeserver" = mkHome { conf = ./homeserver; };
	"dragonblade316@wsl" = mkHome { conf = ./wsl; };
}
