vim.lsp.enable("gopls")

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    local map = function(keys, func, desc, mode)
      mode = mode or "n"
      vim.keymap.set(mode, keys, func, {
	buffer = ev.buf,
	desc = "LSP: " .. desc,
      })
    end

    map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })
    map("<leader>gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
    map("<leader>gi", vim.lsp.buf.implementation, "[G]oto [I]implementation")
    map("<leader>vr", vim.lsp.buf.references, "[V]iew [R]eferences")
    map("<leader>fb", vim.lsp.buf.format, "[F]ormat [B]buffer")

  end,
})

vim.cmd("set completeopt+=noselect")

vim.o.winborder = 'rounded'

vim.diagnostic.config({
  virtual_lines = true
})

