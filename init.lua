-- Minimal Neovim entrypoint
-- Load editor options (leader keys, UI, etc.)
require("config.vim")

-- Load keymaps
require("config.keymaps")

-- Load plugin manager + plugin specs
require("config.lazy")
