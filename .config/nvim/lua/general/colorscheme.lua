vim.g.aqua_transparency = 0
vim.cmd("colorscheme aquarium")

vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'None' })
-- require("kanagawa").setup({
--   compile = false,
--   undercurl = true,
--   transparent = true,
--   dimInactive = false,
--   theme = "wave",
--   background = {
--     dark = "wave",
--     light = "lotus",
--   },
--   overrides = function(colors)
--     local theme = colors.theme
--     return {
--       TelescopeTitle = { fg = theme.ui.special, bold = true },
--       TelescopePromptNormal = { bg = theme.ui.bg_p1 },
--       TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
--       TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
--       TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
--       TelescopePreviewNormal = { bg = theme.ui.bg_dim },
--       TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
--     }
--   end,
-- })


