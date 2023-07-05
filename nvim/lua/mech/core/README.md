# Key bindings for NeoVIM

---

### Key:

<leader> = spacebar

<C-?> = Ctrl + <some character>

<CR> = Carrier Return

# NeoVIM Default rebinds

---

### General Keymaps

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| i | jk | <ESC> | “jk” now works the same as ESC key to save finger stretching |
| n | <leader>ph | :nohl<CR> | Removes search highlights |

### Window Management

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| n | <leader>sv | <C-w>v | Split window vertically |
| n | <leader>sh | <C-w>s | Split window horizontally |
| n | <leader>se | <C-w>= | Make split windows equal width and height |
| n | <leader>sx | :close<CR> | Close current split window |
| n | <leader>to | :tabnew<CR> | Open new tab |
| n | <leader>tx | :tabclose<CR> | Close current tab |
| n | <leader>tn | :tabn<CR> | Go to next tab |
| n | <leader>tp | :tabp<CR> | Go to previous tab |

# NVIM Plugin key bindings

---

### vim maximizer (https://github.com/szw/vim-maximizer)

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| n | <leader>sm | :MaximizerToggle<CR> | Maximizes nvim window when screen split |

### nvim-tree (https://github.com/nvim-tree/nvim-tree.lua)

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| n | <leader>e | :NvimTreeToggle<CR> | Opens file tree in nvim to add/delete/select files |

### telescope (https://github.com/nvim-telescope/telescope.nvim)

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| n | <leader>ff | :Telescope find_files<CR> | Find files within current working directory, respects .gitignore |
| n | <leader>fs | :Telescope live_grep<CR> | Find string in current working directory as you type |
| n | <leader>fc | :Telescope grep_string<CR> | Find string under cursor in current working directory |
| n | <leader>fb | :Telescope buffers<CR> | List open buffers in current neovim instance |
| n | <leader>fh | :Telescope help_tags<CR> | List available help tags |
|  | <C-k> |  | Move to previous result |
|  | <C-j> |  | Move to next result |
|  | <C-q> |  | Send selected to quick fix list |

### nvim-cmp (https://github.com/hrsh7th/nvim-cmp)

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
|  | <C-k> |  | Previous suggestion |
|  | <C-j> |  | Next suggestion |
|  | <C-b> |  | Scroll docs down |
|  | <C-f> |  | Scroll docs up |
|  | <C-Space> |  | Show completion suggestions |
|  | <C-e> |  | Close completion window |
|  | <CR> |  | Select |

### nvim-lspconfig / lspsaga.nvim (https://github.com/nvimdev/lspsaga.nvim and https://github.com/neovim/nvim-lspconfig)

| Mode | Keybinding | Function | Description |
| --- | --- | --- | --- |
| n | gf | :Lspsaga lsp_finder<CR> | Show definition, references |
| n | gD | :lua vim.lsp.buf.declaration()<CR> | Go to declaration |
| n | gd | :Lspsaga peek_definition<CR> | See definition and make edits in window |
| n | gi | :lua vim.lsp.buf.implementation()<CR> | Go to implementation |
| n | <leader>ca | :Lspsaga code_action<CR> | See available code actions |
| n | <leader>rn | :Lspsaga rename<CR> | Smart rename |
| n | <leader>D | :Lspsaga show_line_diagnostics<CR> | Show diagnostics for line |
| n | <leader>d | :Lspsaga show_cursor_diagnostics<CR> | Show diagnostics for cursor |
| n | [d | :Lspsaga diagnostic_jump_prev<CR> | Jump to previous diagnostic in buffer |
| n | ]d | :Lspsaga diagnostic_jump_next<CR> | Jump to next diagnostic in buffer |
| n | K | :Lspsaga hover_doc<CR> | Show documentation for what is under cursor |
| n | <leader>o | :LSoutlineToggle<CR> | See outline on right hand side |
|  | <C-f> |  | Scroll down in lspsaga window |
|  | <C-b> |  | Scroll up in lspsaga window |