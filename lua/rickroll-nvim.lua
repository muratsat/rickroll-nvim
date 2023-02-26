local M = {}

M.name = "rickroll-nvim"
M.description = "RickRoll yourself in neovim"
M.version = "0.0.0"
M.license = "MIT"
M.author = "Murat <muratsatybaldiev2004@gmail.com>"
M.dependencies = {}

local commands = require('rickroll.commands')
function M.setup()
  commands.setup()
end

return M

