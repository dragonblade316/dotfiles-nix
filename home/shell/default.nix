{
  imports = [
    ./fish.nix
    ./starship.nix
    ./cli.nix
    ./zellij.nix
    ./aliases.nix
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
