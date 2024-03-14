return {
  "noice.nvim",
  init = function()
    -- completely disable guicursor
    local hacks = require("noice.util.hacks")
    function hacks:hide_cursor() end
    function hacks:show_cursor() end
  end,
}
