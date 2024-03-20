{
  config,
  pkgs,
  lib,
  self,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

	boot.kernelPackages = pkgs.linuxPackages_6_7;

  networking.hostName = "dragonblade316"; # Define your hostname.
	system.name = "dreadnought";
	
  networking.firewall = {
  	enable = true;
  	  allowedTCPPorts = [ 22 53317 631 22000 ];
		  allowedUDPPorts = [ 22 53317 631 22000 9993 ];
  };

  services.xserver.enable = true;    
  # services.xserver.videoDrivers = ["amdgpu"];
	systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.defaultSession = "hyprland";

	hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot


	services.printing = {
  	  listenAddresses = [ "*:631" ];
  	  allowFrom = [ "all" ];
  	  browsing = true;
  	  defaultShared = true;
	};

	services.avahi = {
      enable = true;
      nssmdns = true;
      openFirewall = true;
      publish = {
    	enable = true;
    	userServices = true;
  	  };
	};

	services.udev.packages = [ pkgs.mixxx ];


  programs.hyprland = { # or wayland.windowManager.hyprland
    enable = true;
    xwayland.enable = true;
  };

	#trying to get gparted to work
	security.polkit.enable = true;



	services.blueman.enable = true;

	services.flatpak.enable = true;

	hardware.opentabletdriver.enable = true;

	services.zerotierone = {
		enable = true;
		joinNetworks = [
			"f94e28faaa0875b1" #orion network
			"60ee7c034a0e57ba" #mainnet
		];
	};

	services.openssh.enable = true;

}

