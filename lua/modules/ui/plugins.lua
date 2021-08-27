local ui = {}
local conf = require('modules.ui.config')

ui['glepnir/zephyr-nvim'] = {
  config = [[vim.cmd('colorscheme zephyr')]]
}

ui['lukas-reineke/indent-blankline.nvim'] = {
  event = 'BufRead',
  config = conf.indent_blakline
}

ui['preservim/nerdtree'] = {
  config = conf.nerd_tree
}

ui['lewis6991/gitsigns.nvim'] = {
  event = {'BufRead','BufNewFile'},
  config = conf.gitsigns,
  requires = {'nvim-lua/plenary.nvim',opt=true}
}

ui['vim-airline/vim-airline'] = {
  config = conf.vim_airline
}

ui['t9md/vim-choosewin'] = {
  config = conf.vim_choosewin
}

ui['easymotion/vim-easymotion'] = {
  config = conf.vim_easymotion
}

ui['preservim/nerdcommenter'] = {
  config = conf.nerdcommenter
}

return ui
