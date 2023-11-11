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

  networking.hostName = "server"; # Define your hostname.

	users.users.public = {
		#not a security concern bc I dont have port forwarding. screw you Idaho internet (also the user cant do much either way)
		password = "password";	
	};
	
	#samba for file sharing
	services.samba.enable = true;
	services.samba.share = {
		public = {
			path = "/var/publicstore";
			"read only" = false;
			browseable = "yes";
			"guest ok" = "yes";
			comment = "housewide file sharing";
		};
	};
}
