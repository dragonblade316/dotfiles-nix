{pkgs, ...}: {
	home.packages = with pkgs; [
		gimp

		obs-studio
		audacity
		easyeffects
		noisetorch
		davinci-resolve
		cura
#		(blender.override {
 #     cudaSupport = true;
  #  })
		freecad
		godot_4
		mixxx
	];
}
