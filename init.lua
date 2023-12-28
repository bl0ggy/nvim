require("thejs")
-- Set working dir to the current dir at startup (e.g. `nvim subfolder` sets the working to 'subfolder' instead of '.')
vim.cmd(":cd" .. vim.api.nvim_buf_get_name(0))
