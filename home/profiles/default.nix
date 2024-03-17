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
			#inputs.hyprland.homeManagerModules.default
			#inputs.nix-colors.homeManagerModules.default
			inputs.stylix.homeManagerModules.stylix
			inputs.nix-index-database.hmModules.nix-index
    ];

    homeImports = {
      dragonblade316 = [./rog] ++ sharedModules ++ imports;
    };

		inherit (inputs.nix-colors) colors;

    mkHome = {conf}: (
			hm.lib.homeManagerConfiguration {
			inherit pkgs;
			modules = [conf] ++ sharedModules ++ imports;
		});


in {
	# dragonblade316 = mkHome { conf = ./main; };
  
	#this is my main machine
	"dragonblade316@dragonblade316" = mkHome { conf = ./main; };
	"dragonblade316@thomeserver" = mkHome { conf = ./homeserver; };
	
	"dragonblade316@wsl" = mkHome { conf = ./wsl; };
  #"dragonblade316@rog" = mkHome { conf = ./rog; };
}
