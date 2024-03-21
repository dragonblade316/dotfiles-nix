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

  networking.hostName = "halcyon"; # Define your hostname.

	#just in case I want to use this for cuda stuff
	hardware.nvidia = {

    # Modesetting is needed for most wayland compositors
    modesetting.enable = true;

    # Use the open source version of the kernel module
    # Only available on driver 515.43.04+
    # The default is true but I'm changing it to false so reverse prime sync works
    open = true;

    # Enable the nvidia settings menu
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.production;
		# package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

	hardware.nvidia.prime = {
    #reverseSync.enable = true;
    sync.enable = true;
    offload = {
      enable = false;
      enableOffloadCmd = false;
    };

    amdgpuBusId = "PCI:6:0:0";
    nvidiaBusId = "PCI:1:0:0";
  };


	services.openssh.enable = true;
	virtualisation.docker.enable = true;
	# virtualisation.docker.enableNvidia = true;

	services.zerotierone = {
		enable = true;
		joinNetworks = [
			"71ece4c16734cd90" #orion network	
			"60ee7c034a0e57ba" #mainnet
		];
	};
}


