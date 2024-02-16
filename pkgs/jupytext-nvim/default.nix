{
	vimUtils,
	fetchFromGitHub
}: vimUtils.buildVimPlugin {
  name = "";
  src = fetchFromGitHub {
    owner = "GCBallesteros";
    repo = "jupytext.nvim";
    rev = "6c9a872";
    sha256 = "sha256-2QDpwQ9+F5t5gTR1KLVzRrvriwo5JUHatZEJnc0ojV8=";
  };
}
