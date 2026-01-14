return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- buffers | tabs
        diagnostics = "nvim_lsp",
        -- separator_style = "slant",

        show_buffer_close_icons = true,
        show_close_icon = false,

        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    })

    -- Keymaps
    local map = vim.keymap.set
    local opts = { silent = true }

    -- Navigate buffers
    map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)      -- next buffer
    map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)   -- previous buffer

    -- Close buffers
    map("n", "<leader>x", "<cmd>BufferLinePickClose<CR>", opts) -- pick buffer to close
    map("n", "<leader>bd", "<cmd>bdelete<CR>", opts)            -- close current buffer
    map("n", "<leader>bk", "<cmd>BufferLineCloseOthers<CR>", opts) -- close others
    map("n", "<leader>ba", "<cmd>bufdo bdelete<CR>", opts)      -- close all buffers
    map("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", opts) -- close left buffers
    map("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", opts) -- close right buffers

  end,
}
