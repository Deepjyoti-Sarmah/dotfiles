return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  cmd = "ToggleTerm",
  keys = {
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Floating Terminal" },
    { "<A-1>", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
    { "<A-2>", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
    { "<A-3>", "<cmd>ToggleTerm direction=float<cr>", desc = "Floating Terminal" },
  },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 12
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  },
}
