return {
  {
    -- obsidian
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    keys = {
      {
        "<leader>on",
        function()
          local title = vim.fn.input("Note title: ")
          if title ~= "" then
            vim.cmd("ObsidianNew " .. title)
          else
            vim.cmd("ObsidianNew")
          end
        end,
        desc = "New Obsidian note",
        ft = "markdown",
      },
      {
        "<leader>ot",
        function()
          vim.cmd("ObsidianTags")
        end,
        desc = "Add tag to current note",
        ft = "markdown",
      },
    },
    opts = {
      workspaces = {
        {
          name = "vault",
          path = "~/Documents/notes-vault/matrioshka-brain/",
        },
      },
      picker = {
        name = "fzf-lua",
      },
    },
  },
}
