-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

function _SOURCE_FILE()
	vim.cmd ':so %'
	print 'sourced current file'
end

function _MAKE_EXECUTABLE()
	vim.cmd '!chmod +x %<cr>'
	print 'Current file is now executeable'
end

--Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Clear highlights
keymap('n', '<leader>h', '<cmd>nohlsearch<CR>', opts)

-- Close buffers
keymap('n', '<S-q>', '<cmd>Bdelete!<CR>', opts)

-- Better paste
keymap('v', 'p', '"_dP', opts)

-- Make current file executeable
keymap('n', '<leader>xx', '<cmd> lua _MAKE_EXECUTABLE()<CR>', opts)

-- Source current file
keymap('n', '<leader>xs', '<cmd> lua _SOURCE_FILE()<CR>', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move highlight up and down
keymap('v', 'J', ':m \'>+1 <cr>gv=gv')
keymap('v', 'K', ':m \'<-2 <cr>gv=gv')

-- Open .env
keymap('n', '<leader>el', '<cmd>vsplit ~/Vertrical/medlify/apps/client/.env.local<cr>', opts)
keymap('n', '<leader>ed', '<cmd>vsplit ~/Vertrical/medlify/apps/client/sanity/.env.development<cr>', opts)

-- Plugins --

-- NvimTree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>ft', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fk', ':Telescope keymaps<CR>', opts)

-- Git
keymap('n', '<leader>gg', '<cmd>lua _LAZYGIT_TOGGLE()<CR>', opts)

-- Comment
keymap('n', '<leader>/', '<cmd>lua require(\'Comment.api\').toggle_current_linewise()<CR>', opts)
keymap('x', '<leader>/', '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap('n', '<leader>db', '<cmd>lua require\'dap\'.toggle_breakpoint()<cr>', opts)
keymap('n', '<leader>dc', '<cmd>lua require\'dap\'.continue()<cr>', opts)
keymap('n', '<leader>di', '<cmd>lua require\'dap\'.step_into()<cr>', opts)
keymap('n', '<leader>do', '<cmd>lua require\'dap\'.step_over()<cr>', opts)
keymap('n', '<leader>dO', '<cmd>lua require\'dap\'.step_out()<cr>', opts)
keymap('n', '<leader>dr', '<cmd>lua require\'dap\'.repl.toggle()<cr>', opts)
keymap('n', '<leader>dl', '<cmd>lua require\'dap\'.run_last()<cr>', opts)
keymap('n', '<leader>du', '<cmd>lua require\'dapui\'.toggle()<cr>', opts)
keymap('n', '<leader>dt', '<cmd>lua require\'dap\'.terminate()<cr>', opts)

--Harpoon
keymap('n', '<leader>mm', '<cmd>lua require"harpoon.mark".add_file()<cr>', opts)
keymap('n', '<leader>mt', '<cmd>lua require"harpoon.ui".toggle_quick_menu()<cr>', opts)
keymap('n', '<leader>mt', '<cmd>lua require"harpoon.ui".toggle_quick_menu()<cr>', opts)
keymap('n', '<C-j>', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', opts)
keymap('n', '<C-k>', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', opts)
keymap('n', '<C-l>', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', opts)
keymap('n', '<C-h>', '<cmd>lua require("harpoon.ui").nav_next()<cr>', opts)
