-- disable format
vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.autoformat = false
	else
		vim.g.autoformat = false
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})

-- enable format
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.autoformat = true
	vim.g.autoformat = true
end, {
	desc = "Re-enable autoformat-on-save",
})

-- directory diff
local target_repo_cache = nil

local function smart_diff()
	if not target_repo_cache then
		target_repo_cache = vim.fn.input("Path to target repo: ", "", "dir")
		-- Ensure trailing slash
		if target_repo_cache ~= "" and target_repo_cache:sub(-1) ~= "/" then
			target_repo_cache = target_repo_cache .. "/"
		end
	end

	local current_file = vim.fn.expand("%")
	vim.cmd("vertical diffsplit " .. target_repo_cache .. current_file)
end

vim.keymap.set("n", "<leader>dd", smart_diff)
