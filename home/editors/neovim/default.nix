{pkgs, inputs, nixvim, ...}: {
#  programs.nixvim = {
#    enable = true;

#    colorschemes.tokyonight.enable = true;
#  };
#}


  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    defaultEditor = true;

    extraPackages = with pkgs; [
      wl-clipboard
    ];

    plugins = with pkgs.vimPlugins; [
      nvim-cmp
      cmp-nvim-lsp
      cmp-buffer
      cmp-treesitter
      cmp-spell
			cmp-tabnine
      lsp-zero-nvim
			nvim-autopairs

      which-key-nvim
      telescope-nvim
      nvim-lspconfig
      nvim-tree-lua
      (nvim-treesitter.withPlugins (_: pkgs.tree-sitter.allGrammars))
      leap-nvim
			flash-nvim
      comment-nvim
      {
        plugin = tokyonight-nvim;
        config = "colorscheme tokyonight";
      }

      lualine-nvim
      nvim-web-devicons
      barbar-nvim
    ];
    

    extraLuaConfig = let
      luaRequire = module:
        builtins.readFile (builtins.toString
          ./config
          + "/${module}.lua");
      luaConfig = builtins.concatStringsSep "\n" (map luaRequire [
        "init"
        "lspconfig"
        "nvim-cmp"
        "treesitter"
        "mappings"
				"opts"
      ]);
    in ''
      ${luaConfig}
    '';
    

#
  };
}

