Neovim dotfiles — minimal structure

This repository provides a minimal, modular Neovim configuration.

Structure:
- `init.lua` — entrypoint that loads `lua/config/lazy.lua`
- `lua/config/lazy.lua` — bootstraps `lazy.nvim` and loads plugin specs
- `lua/plugins/*.lua` — plugin spec files (example: `spec1.lua`, `spec2.lua`)

Next steps:
- Add your plugin specs to `lua/plugins/`
- Add `lua/config/options.lua` and `lua/config/keymaps.lua` as needed
- Run Neovim; `lazy.nvim` will be bootstrapped automatically
