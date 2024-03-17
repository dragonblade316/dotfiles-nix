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
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  #
	boot.loader.grub = {
		enable = true;
		device = "/dev/sda";
		useOSProber = true;
	};

  networking.hostName = "thomeserver"; # Define your hostname.

	  networking.firewall = {
  	enable = true;
  	  allowedTCPPorts = [ 22 ];
		  allowedUDPPorts = [ 22 ];
  };



	# users.users.public = {
	# 	#not a security concern bc I dont have port forwarding. screw you Idaho internet (also the user cant do much either way)
	# 	password = "password";	
	#samba for file sharing
	services.samba.enable = true;
	services.samba.shares = {
		public = {
			path = "/var/publicstore";
			"read only" = false;
			browseable = "yes";
			"guest ok" = "yes";
			comment = "housewide file sharing";
		};
	};

	virtualisation.docker.rootless = {
		enable = true;
		setSocketVariable = true;
	};

	services.zerotierone = {
		enable = true;
		joinNetworks = [
			"60ee7c034a0e57ba"
		];
	};

	services.openssh.enable = true;
}
