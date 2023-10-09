{pkgs, ...}: {
	home.packages = with pkgs; [
		gimp
		obs-studio
		davinci-resolve
		cura
		(blender.override {
      cudaSupport = true;
    })
		#blender_3_6
		freecad
		godot_4
	];
}
