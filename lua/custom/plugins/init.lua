-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  --{
  --'nvim-neo-tree/neo-tree.nvim',
  --branch = 'v3.x',
  --dependencies = {
  --'nvim-lua/plenary.nvim',
  --'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
  --'MunifTanjim/nui.nvim',
  ---- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  --},
  --init = function()
  ---- Below funciton allows opening a directory with an empty buffer using: `nvim <directory>`
  --if vim.fn.argc(-1) == 1 then
  --local stat = vim.loop.fs_stat(vim.fn.argv(0))
  --if stat and stat.type == 'directory' then
  --require('neo-tree').setup {
  --filesystem = {
  --hijack_netrw_behavior = 'open_current',
  --},
  --}
  --end
  --end
  --end,
  --opts = {
  ---- neo-tree options here
  --},
  --},
  {
    -- lsp_lines, used to provide multi-line and character-specific error/diagonstic info
    'ErichDonGubler/lsp_lines.nvim',
    init = function()
      require('lsp_lines').setup()
    end,
    config = function()
      require('lsp_lines').setup()
      -- specialized config for lsp_lines here
      vim.keymap.set('', '<Leader>l', require('lsp_lines').toggle, { desc = '[l]sp_lines Diagnostics Toggle' })
    end,
  },
  -- Disable virtual_text since it's redundant due to lsp_lines.
  vim.diagnostic.config {
    virtual_text = false,
  },
}
