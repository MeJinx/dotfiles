require "nvchad.mappings"

-- add yours here

local keymap = vim.keymap

local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
keymap.set("n", ";", ":", { desc = "CMD enter command mode" })

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "qq", ":q<CR>")
keymap.set("n", "qw", ":wq<CR>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>-", "<C-w>v", {desc = '水平新增窗口'}) -- 水平新增窗口 
keymap.set("n", "<leader>_", "<C-w>s", {desc = '垂直新增窗口'}) -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = '取消搜索高亮'})

-- 切换buffer
keymap.set("n", "<C-N>", ":bnext<CR>")
keymap.set("n", "<C-P>", ":bprevious<CR>")

-- visual模式下缩进代码
keymap.set("v", "H", "<gv", opts)
keymap.set("v", "L", ">gv", opts)

-- 放缩
keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- tabufline
keymap.set("n", "<C-N>", function() require("nvchad.tabufline").prev() end, { desc = "previous buffer" })
keymap.set("n", "<C-P>", function() require("nvchad.tabufline").next() end, { desc = "next buffer" })
keymap.set("n", "<C-X>", function() require("nvchad.tabufline").close_buffer() end, { desc = "close buffer" })
-- nvim tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>",{desc = '侧边文件栏'})

-- nvim-lazygit
keymap.set("n","<leader>lg", "<cmd>LazyGit<cr>", {desc = 'lazy'})
