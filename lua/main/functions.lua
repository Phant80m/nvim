local vim = vim
-- inlay hints:
-- vim.api.nvim_set_keymap('n', '<Leader><Tab>', ':RustSetInlayHints<CR>', { noremap = true, silent = true })
function toggle_rust_inlay_hints()
	if vim.b.rust_inlay_hints_enabled == true then
		vim.cmd('RustUnsetInlayHints')
		vim.b.rust_inlay_hints_enabled = false
	else
		vim.cmd('RustSetInlayHints')
		vim.b.rust_inlay_hints_enabled = true
	end
end

-- Set the initial state of the inlay hints to disabled
vim.b.rust_inlay_hints_enabled = false

-- Create a key mapping for <Leader><Tab> that toggles the inlay hints
vim.api.nvim_set_keymap('n', '<Leader><Tab>', ':lua toggle_rust_inlay_hints()<CR>', { noremap = true, silent = true })

