{
  pkgs,
  lib,
  ...
}:

{


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
  


  # Enable networking
  networking.networkmanager.enable = true;

   # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  hardware.opengl.enable = true;

  programs = {
    neovim.enable = true;
    fish.enable = true;
  };

  # Set your time zone.
  time.timeZone = lib.mkDefault "America/Boise";

  system.stateVersion = lib.mkDefault "23.05";

  nixpkgs.config.allowUnfree = true;

  users.users.dragonblade316 = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    	brave 
	kitty
	#general
      firefox
      kate
      git
      libreoffice
      #godot4
      gparted
      vlc
      zoom-us
      busybox
      ripgrep
      #ripgrep-all
      lazygit
      vscode
      obs-studio
      xclip
      qmk
      gimp
      xonotic
      obsidian
      vnstat
      cura
      #(blender.override {
      #  cudaSupport = true;
      #})
      prismlauncher
      via
      opera
      (lutris.override {
        extraLibraries =  pkgs: [
          # List library dependencies here
        ];
        extraPkgs = pkgs: [ pkgs.libnghttp2 ];
      })
      wineWowPackages.stable
      winetricks

      unrar
      input-remapper

      gh
      go
      grapejuice
      audible-cli#ff4499;
      grive2
      wofi

      eww-wayland

      #davinci-resolve

      #gaming
      heroic

      #terminal setup
      neovim
      
      neofetch

      gnumake
      gcc

      home-manager

      #rust/cpp
      clang
      rustup
      cmake

      #printer
      #system
      cudatoolkit
      asusctl
      wdisplays
      waybar
      swaynotificationcenter
      mpd-small
      pamixer
      udiskie

      playerctl

      hyprpaper
      python312
      wireplumber
      lxappearance
      pavucontrol
      imagemagick
      grim
      slurp
			gnome.nautilus
			fractal
    ];
    
  };

  services.flatpak.enable = true;

}
