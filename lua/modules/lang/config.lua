local config = {}

function config.nvim_treesitter()
  vim.api.nvim_command('set foldmethod=expr')
  vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
  require'nvim-treesitter.configs'.setup {
    ensure_installed = {'cpp', 'c', 'python', 'rust'},
    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
  }
end

function config.vimtex()
  vim.g.tex_flavor = 'latex'
  vim.g.vimtex_quickfix_mode = 0
  vim.g.vimtex_view_general_viewer = "/Applications/Skim.app/Contents/SharedSupport/displayline"
  vim.g.vimtex_view_general_options = '-r @line @pdf @tex'
end

return config
