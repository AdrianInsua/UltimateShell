local nvim_lsp = require 'lspconfig'
local utils = require 'lspconfig/util'

local root_pattern = function (...)
  local patterns = vim.tbl_flatten { ... }
  local function matcher(path)
    for _, pattern in ipairs(patterns) do
      for _, p in ipairs(vim.fn.glob(utils.path.join(path, pattern), true, true)) do
        if utils.path.exists(p) then
          return path
        end
      end
    end
  end
  return function(startpath)
    if utils.path.sep == "\\" then
      startpath = string.gsub(startpath, "/", "\\")
    end
    return utils.search_ancestors(startpath, matcher)
  end
end

nvim_lsp.eslint.setup {
    root_dir = root_pattern(
      '.eslintrc.yml',
      '.eslintrc.js',
      '.eslintrc.cjs',
      '.eslintrc.yaml',
      '.eslintrc.json',
      'package.json'
    )
}
