--[[
MIT License

Copyright (c) 2021 César Enrique Ramírez

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

local SwapBuffers = {
  config = {
    ignore_filetypes = {'NvimTree'}
  }
}

function SwapBuffers.setup(config)
  if config ~= nil then
    SwapBuffers.config = vim.tbl_deep_extend("force", SwapBuffers.config, config)
  end
end

function SwapBuffers.swap_buffers(with)
  if string.match(with, "[hjkl]") then
    local target_window = vim.fn.win_getid(vim.fn.winnr(with))
    local target_buffer = vim.api.nvim_win_get_buf(target_window)

    local target_filetype = vim.api.nvim_buf_get_option(target_buffer, 'filetype')
    local current_filetype = vim.api.nvim_buf_get_option(0, 'filetype')
    local ignore = SwapBuffers.config.ignore_filetypes

    if not (vim.tbl_contains(ignore, target_filetype) or vim.tbl_contains(ignore, current_filetype)) then

      local current_window = vim.fn.win_getid()
      local current_buffer = vim.fn.bufnr()

      vim.cmd("b " .. target_buffer)
      vim.fn.win_gotoid(target_window)
      vim.cmd("b " .. current_buffer)
    end
  else
    print("argument needs to be one of [hjkl]")
  end
end

return SwapBuffers
