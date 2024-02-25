{pkgs, ...}: {
	home.packages = with pkgs; [
		gimp

		obs-studio
		audacity
		easyeffects
		noisetorch
		# davinci-resolve
		cura
#		(blender.override {
 #     cudaSupport = true;
  #  })
		blender-hip
		freecad
		godot_4
		mixxx
	];
}
