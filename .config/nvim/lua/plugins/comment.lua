return {
  "numToStr/Comment.nvim",
  opts = {},
  keys = {
    {
      "<C-/>",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      desc = "Toggle Comment",
    },
    {
      "<C-/>",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      mode = "v",
      desc = "Toggle Comment (Visual)",
    },
  },
}
