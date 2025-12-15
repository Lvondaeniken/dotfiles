local map = vim.keymap.set
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope Help page" })

map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope Find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })

-- nvim-tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Tree" })
map("n", "<C-m>", "<cmd>NvimTreeFocus<CR>", { desc = "Focus Tree" })

-- conform
map("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format Files" })

map("n", "<leader>rc", function()
	local filetype = vim.bo.filetype
	local filepath = vim.fn.expand("%")
	local cmd = ""

	if filetype == "python" then
		cmd = "!python3 " .. filepath
	elseif filetype == "lua" then
		cmd = "!lua " .. filepath
	elseif filetype == "sh" then
		cmd = "!bash " .. filepath
	elseif filetype == "javascript" then
		cmd = "!node " .. filepath
	else
		print("No run command configured for filetype: " .. filetype)
		return
	end
	vim.cmd(cmd)
end, { desc = "Run Code" })
