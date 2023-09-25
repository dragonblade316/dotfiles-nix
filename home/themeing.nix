{pkgs, ...}: {
  # themeing
  gtk = {
    enable = true;
    font.name = "FiraMono Nead Font";
    theme = {
      name = "tokyo night";
      package = pkgs.tokyo-night-gtk;
    };
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}
