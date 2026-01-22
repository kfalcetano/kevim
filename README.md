```
 ____  __.     ____   ____.__           
|    |/ _| ____\   \ /   /|__|  _____   
|      < _/ __ \\   Y   / |  | /     \  
|    |  \\  ___/ \     /  |  ||  Y Y  \ 
|____|__ \\___  > \___/   |__||__|_|  / 
        \/    \/                    \/  
```
---
This is my personal neovim config. It uses lazy.nvim to manage plugins.

## Requirements
- Use of treesitter requires a C compiler installation as well as the treesitter CLI
  - This isn't super obvious especially because parser compilation **does not** throw an error when these aren't present
- [`ty`](https://docs.astral.sh/ty) is the required python language server. Ideally use `uv tool install ty` to install it
