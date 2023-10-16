{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "dragonblade316";
    userEmail = "dragonblade316@yahoo.com";
		extraConfig = {
      credential.helper = "${
          pkgs.git.override { withLibsecret = true; }
        }/bin/git-credential-libsecret";
    };
  };
#add github cli here
	# programs.gh = {
	# 	enable = true;
	# };

	home.packages = with pkgs; [
		gh
	];
}
