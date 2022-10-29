local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args
require('keymap.config')

local plug_map = {
    ---- Plugin nvim-tree
    ["n|<space>nt"]      = map_cr('NERDTreeToggle'):with_noremap():with_silent(),
    ---- Plugin Telescope
    ["n|<m-f>f"]     = map_cu('Telescope find_files'):with_noremap():with_silent(),
    ["n|<m-f>g"]     = map_cu('Telescope live_grep'):with_noremap():with_silent(),
    ["n|<m-f>b"]     = map_cu('Telescope buffers'):with_noremap():with_silent(),
    ["n|<m-f>h"]     = map_cu('Telescope help_tags'):with_noremap():with_silent(),
    ---- Plugin hop
    ["n|<space>j"]       = map_cr('HopLineStart'):with_silent(),
    ---- Plugin coc.vim
    ["n|gd"]             = map_cmd("<Plug>(coc-definition)"):with_silent(),
    ["n|gy"]             = map_cmd("<Plug>(coc-type-definition)"):with_silent(),
    ["n|gi"]             = map_cmd("<Plug>(coc-implementation)"):with_silent(),
    ["n|gr"]             = map_cmd("<Plug>(coc-references)"):with_silent(),
    ---- Plugin coc.vim
    ["n|<m-e>"]          = map_cmd("<Plug>(choosewin)"),
    ---- Plugin Vista
    ["n|<Leader>v"]    = map_cr('Vista!!'):with_noremap():with_silent()
};

bind.nvim_load_mapping(plug_map)
