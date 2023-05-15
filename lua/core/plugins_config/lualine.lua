local function location()
    local cursor = vim.fn.getcurpos()
    local line = vim.fn.getline('.')
    local pos = cursor[3]
    local line_num = cursor[2]
    if line == "" then
        return string.format('line=%d|pos=%d|hex=0x00', line_num, pos)
    end

    local character = string.sub(line, pos, pos)
    local ascii_value = string.byte(character)
    return string.format('line=%d|pos=%d|hex=0x%x', line_num, pos, ascii_value)
end

require('lualine').setup({
  options = {
    theme = 'material',
  },
  sections = { lualine_z = {location} },
})
