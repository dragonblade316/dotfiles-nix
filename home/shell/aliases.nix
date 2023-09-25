{
  home.shellAliases = {
    server = "ssh dragonblade317@192.168.0.199";
    nixconf = "sudo -E -s nvim /etc/nixos/configuration.nix";
    nixrebuild = "sudo nixos-rebuild switch";
  };
}
