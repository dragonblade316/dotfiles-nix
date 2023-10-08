{pkgs, ...}: {
	home.packages = with pkgs; [
		gimp
		krita
		obs-studio
		godot_4
		cura
		blender_3_6
		freecad
	];
}
