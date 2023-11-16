{pkgs, ...}: {
	home.packages = with pkgs; [
		gimp
		obs-studio
		davinci-resolve
		cura
		(blender.override {
      cudaSupport = true;
    })
		freecad
		godot_4
	];
}
