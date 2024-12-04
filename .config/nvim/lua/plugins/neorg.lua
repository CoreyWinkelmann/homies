return {
  {
    "nvim-neorg/neorg",
    version = "*", -- Use the latest stable release
    build = ":Neorg sync-parsers", -- This command syncs Neorg's parsers
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.journal"] = {
            config = {
              strategy = "flat",
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/MindWorks/notes",
                work = "~/MindWorks/work",
              },
              default_workspace = "notes",
            },
          },
        },
      })
    end,
  },
}
