return {
  'ctrlpvim/ctrlp.vim',
  config = function()
    vim.g.ctrlp_custom_ignore = "\\v[\\/](node_modules|target|dist|build)|(\\.(swp|ico|git|svn))$"
  end;
}
