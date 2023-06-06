return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 2
    vim.g.loaded_netrwPlugin = 2

    local function on_attach(bufnr)
      local api = require('nvim-tree.api')

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      local map = vim.keymap.set

      map('n', 'u', api.tree.change_root_to_parent, opts('Up'))
      map('n', 'l', api.node.open.edit, opts('Open'))
      map('n', 'l', api.node.open.edit, opts('CD'))
      map('n', '<CR>', api.node.open.edit, opts('Open'))
      map('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
      map('n', 'L', api.tree.change_root_to_node, opts('CD'))
      map('n', '<C-s>', api.node.open.horizontal, opts('Open: Horizontal Split'))
      map('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
      map('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
      map('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
      map('n', 'i', api.node.open.preview, opts('Open Preview'))
      map('n', 'R', api.tree.reload, opts('Refresh'))
      map('n', 'c', api.fs.create, opts('Create'))
      map('n', 'r', api.fs.rename, opts('Rename'))
      map('n', 'd', api.fs.cut, opts('Cut'))
      map('n', 'y', api.fs.copy.node, opts('Copy'))
      map('n', 'p', api.fs.paste, opts('Paste'))
      map('n', 'D', api.fs.remove, opts('Delete'))
      map('n', 'yn', api.fs.copy.filename, opts('Copy Name'))
      map('n', 'yp', api.fs.copy.relative_path, opts('Copy Relative Path'))
      map('n', 'ya', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
      map('n', '"', api.tree.collapse_all, opts('Collapse'))
      map('n', 'q', api.tree.close, opts('Close'))
    end

    require("nvim-tree").setup {
      on_attach = on_attach,
      disable_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      sort_by = "name",
      view = {
        width = 25,
        side = "left",
        cursorline = true,
        number = false,
        centralize_selection = true,
      },
      renderer = {
        root_folder_label = false,
        indent_width = 1,
        indent_markers = {
          enable = false,
          inline_arrows = false,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "after",
          modified_placement = "before",
          padding = " ",
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
            modified = true,
          },
          -- glyphs = {
          --   default = "",
          --   symlink = "",
          --   folder = {
          --     default = "",
          --     open = "",
          --     empty = "",
          --     empty_open = "",
          --     symlink = "",
          --     symlink_open = "",
          --   },
          --   git = {
          --     unstaged = "",
          --     staged = "S",
          --     unmerged = "",
          --     renamed = "➜",
          --     untracked = "U",
          --     deleted = "",
          --     ignored = "◌",
          --   },
          -- },
        },
      },
      git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 400,
      },
      modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "✘ ",
        },
      },
      filters = {
        dotfiles = false,
        custom = {
          "^.git$",
          "^node_modules$"
        }
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = { "help" },
        update_cwd = true,
      },
      actions = {
        change_dir = {
          enable = true,
        },
        open_file = {
          resize_window = false,
          window_picker = {
            chars = "aoeui",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
        },
      }
    }
  end
}
