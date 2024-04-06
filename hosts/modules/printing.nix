{	
	services.printing = {
			enable = true;
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

}
