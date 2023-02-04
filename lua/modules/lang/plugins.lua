local lang = {}
local conf = require('modules.lang.config')

lang['nvim-treesitter/nvim-treesitter'] = {
  event = 'BufRead',
  after = 'telescope.nvim',
  config = conf.nvim_treesitter,
}

lang['nvim-treesitter/nvim-treesitter-textobjects'] = {
  after = 'nvim-treesitter'
}

lang['lervag/vimtex'] = {
  config = conf.vimtex,
}

lang['L3MON4D3/LuaSnip'] = {
  config = conf.luasnip,
  tag = "v<CurrentMajor>.*",
}

return lang
