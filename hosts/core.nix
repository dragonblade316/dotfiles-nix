{
  pkgs,
  lib,
  ...
}:

# This folder just has some base configuration that I think its reasonable to expect any system I use to have.
# There are some packages in here but most are defined in ../home or in the hosts

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

		wireplumber.enable = true;

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
      git
      busybox
      ripgrep
      #ripgrep-all

      gnumake
      gcc

      home-manager
      
      cudatoolkit #move to envirment
      pamixer
      udiskie

      playerctl

      wireplumber
			# xdg-desktop-portal-hyprland
    ];
    
  };

	swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 16*1024;
  } ];

	services.udisks2.enable = true;
}
