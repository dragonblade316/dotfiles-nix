{
	programs.nixvim.extraConfigLuaPre = ''vim.g.mapleader = " "'';
	
	programs.nixvim.keymaps = [
		{
			action = "<cmd>NvimTreeToggle<cr>";
			key = "<leader>e";
		}
		
		{
			action = "<cmd>TroubelToggle<cr>";
			key = "<leader>r";
		}

		{
			action = "<cmd>Telescope live_grep<cr>";
			key = "<leader>/";
		}

		{
			action = "<cmd>Telescope find_files<cr>";
			key = "<leader>f";
		}

		{
			action = "<cmd>lua require('dap').continue() <cr>";
			key = "<leader>l";
		}
		
	];
}
