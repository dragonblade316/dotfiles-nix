{pkgs, inputs, ...}: {
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
			nvim-dap
			
			#to my minor annoyence the plugin for rust that comes with debugging support also does its own lsp stuff. this means I will probably need to do some rethinking in lspconfig.lua
			# rust-tools-nvim

			
			nvim-code-action-menu
			nvim-autopairs
      which-key-nvim
			better-escape-nvim
			trouble-nvim
			auto-save-nvim
      telescope-nvim
      nvim-lspconfig
      nvim-tree-lua
      (nvim-treesitter.withPlugins (_: pkgs.tree-sitter.allGrammars))
      leap-nvim
			flash-nvim
      comment-nvim
			better-escape-nvim
			nui-nvim
			noice-nvim

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

