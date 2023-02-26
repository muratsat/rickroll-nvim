local api = vim.api

local M = {}

function M.RickRoll()
  local buffer = api.nvim_create_buf(false, true)
  api.nvim_buf_set_lines(buffer, 0, -1, true,
    { "never", "gonna", "give", "you", "up" }
  )
  api.nvim_set_current_buf(buffer)
end

function M.setup()
  api.nvim_command('command! -nargs=* RickRoll lua require("rickroll.commands").RickRoll(<f-args>)')
end

return M
