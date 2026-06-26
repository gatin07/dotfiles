---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          keys = {
            {
              icon = "󰑓",
              key = "l",
              desc = "Last session",
              action = function()
                local ok, resession = pcall(require, "resession")
                if ok then resession.load("Last Session", { silence_errors = true }) end
              end,
            },
            {
              icon = "",
              key = "f",
              desc = "Find Files",
              action = function() Snacks.dashboard.pick "files" end,
            },
            {
              icon = "",
              key = "r",
              desc = "Recent Files",
              action = function() Snacks.dashboard.pick "oldfiles" end,
            },
            {
              icon = "",
              key = "p",
              desc = "Projects",
              action = function() Snacks.picker.files { cwd = vim.fn.expand "~/projects" } end,
            },
            {
              icon = "",
              key = "d",
              desc = "Dotfiles",
              action = function() Snacks.dashboard.pick("files", { cwd = vim.fn.expand "~/.config" }) end,
            },
            {
              icon = "󰈆",
              key = "q",
              desc = "Quit",
              action = ":qa",
            },
          },
          header = [[
⟋|､
(°､ ｡ 7
|､  ~ヽ
  じしf_,)〳
]],
        },
      },
    },
  },
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    opts = {
      preset = "powerline",
      transparent_bg = true,
      options = {
        show_source = {
          enabled = true,
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        hover = { enabled = false },
        signature = { enabled = false },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      views = {
        cmdline_popup = {
          position = {
            row = "70%",
            col = "50%",
          },
        },
      },
    },
    depedencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
}
