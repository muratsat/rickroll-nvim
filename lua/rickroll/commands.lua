local api = vim.api

local M = {}

local frames = require('rickroll.ascii').GetFrames()

local function Draw(buffer, index)
  vim.api.nvim_buf_set_lines(buffer, 0, -1, true, {})

  local frame = frames[index]
  api.nvim_buf_set_lines(buffer, 0, -1, true, frame)

  vim.defer_fn(function()
    Draw(buffer, (index % #frames) + 1)
  end, 50)
end

function StartAnimation(buffer)
  Draw(buffer, 1)
end

function M.RickRoll()
  local buffer = api.nvim_create_buf(false, true)
  api.nvim_set_current_buf(buffer)
  StartAnimation(buffer)
end

function M.setup()
  api.nvim_command('command! -nargs=* RickRoll lua require("rickroll.commands").RickRoll(<f-args>)')
end

return M
