{
  programs.fish = {
    enable = true;

    shellInit = ''
			export NIXPKGS_ALLOW_UNFREE=1
			
      #thing that makes terminal look good
      #set -Ux STARSHIP_DISTRO "  "
      starship init fish | source

      #multiplexer
      if set -q ZELLIJ
      else
        zellij
      end

      neofetch'';

  };
}
