{pkgs, ...}: {
  home.packages = with pkgs; [
    zip
    unzip
    unrar

    grim
    slurp

    ripgrep

		imagemagick

		neofetch
  ];
}
