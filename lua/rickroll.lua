local M = {}

M.name = "rickroll"
M.description = "RickRoll yourself in neovim"
M.version = "0.1.0"
M.license = "MIT"
M.author = "Murat <muratsatybaldiev2004@gmail.com>"
M.dependencies = {}

local commands = require('rickroll.commands')
function M.setup()
  commands.setup()
end

return M

