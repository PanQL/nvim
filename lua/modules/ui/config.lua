local config = {}

function config.nerd_tree()
  vim.g.NERDTreeMinimalUI = 1
  vim.g.NERDTreeDirArrows = 1
  vim.g.NERCTreeHijackNetrw = 0
  --vim.g.NERDTreeIgnore = {'\.o$','\.O$'}
  vim.g.NERDTreeShowLineNumbers=1
end

--function config.hop()
  --require'hop'.setup()
  --local hop = require('hop')
  --local directions = require('hop.hint').HintDirection
  --vim.keymap.set('', 'f', function()
    --hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  --end, {remap=true})
  --vim.keymap.set('', 'F', function()
    --hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  --end, {remap=true})
  --vim.keymap.set('', 't', function()
    --hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
  --end, {remap=true})
  --vim.keymap.set('', 'T', function()
    --hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
  --end, {remap=true})
--end

function config.vim_choosewin()
end

function config.nerdcommenter()
end

function config.gitsigns()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd [[packadd plenary.nvim]]
  end
  require('gitsigns').setup {
    signs = {
      add = {hl = 'GitGutterAdd', text = '▋'},
      change = {hl = 'GitGutterChange',text= '▋'},
      delete = {hl= 'GitGutterDelete', text = '▋'},
      topdelete = {hl ='GitGutterDeleteChange',text = '▔'},
      changedelete = {hl = 'GitGutterChange', text = '▎'},
    },
  }
end

function config.indent_blakline()
  vim.g.indent_blankline_char = "│"
  vim.g.indent_blankline_show_first_indent_level = true
  vim.g.indent_blankline_filetype_exclude = {
    "startify",
    "dashboard",
    "dotooagenda",
    "log",
    "fugitive",
    "gitcommit",
    "packer",
    "vimwiki",
    "markdown",
    "json",
    "txt",
    "vista",
    "help",
    "todoist",
    "NvimTree",
    "peekaboo",
    "git",
    "TelescopePrompt",
    "undotree",
    "flutterToolsOutline",
    "" -- for all buffers without a file type
  }
  vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
  vim.g.indent_blankline_show_trailing_blankline_indent = false
  vim.g.indent_blankline_show_current_context = true
  vim.g.indent_blankline_context_patterns = {
    "class",
    "function",
    "method",
    "block",
    "list_literal",
    "selector",
    "^if",
    "^table",
    "if_statement",
    "while",
    "for"
  }
  -- because lazy load indent-blankline so need readd this autocmd
  vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
end

function config.vim_airline()
  vim.g.airline_left_sep = ''
  vim.g.airline_left_alt_sep = ''
  vim.g.airline_right_sep = ''
  vim.g.airline_right_alt_sep = ''
  vim.g.airline_powerline_fonts = 0
  vim.g.airline_exclude_preview = 1
  vim.g.airline_section_b = '%n'
  vim.g['airline#extensions#vista#enabled'] = 1
  vim.g['airline#extensions#branch#enabled'] = 1
  vim.g['airline#extensions#syntastic#enabled'] = 1
end

function config.nightfox_nvim()
  --vim.cmd('colorscheme nightfox')
end

return config
