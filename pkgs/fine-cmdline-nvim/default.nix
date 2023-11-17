{vimUtils, fetchFromGitHub}: vimUtils.buidVimPlugin {
	name = "fine-cmdline-nvim";
	src = fetchFromGitHub {
		owner = "VonHeikemen";
		repo = ""
	}
}
